package com.example.webapp;

import java.util.List;
import java.util.Optional;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;


@Controller
public class LoginController{
	
	
	private usuariosRepository UsuariosRepository;
	private testesRepository TestesRepository;
	private imagensRepository ImagensRepository;

	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public  LoginController(usuariosRepository UsuariosRepository, testesRepository TestesRepository, imagensRepository ImagensRepository) {
		this.UsuariosRepository = UsuariosRepository;
		this.TestesRepository = TestesRepository;
		this.ImagensRepository = ImagensRepository;
	} 
	
	
//	GET'S
	
	@GetMapping("/")
	public String index(Model model, usuarios usuario) {
		return "/login";
	}
	
	@GetMapping("/pdf/{testeID}")
	public String pdf(Model model, testes teste, imagens imagem) {
		Optional<testes> ts = TestesRepository.findById(teste.getTesteID());
		testes t = ts.get();
		model.addAttribute("teste", t);
		String sql = "SELECT * FROM imagens where ativo = 1 order by pagina desc" ;
		List<imagens> ims  = jdbcTemplate.query(sql, BeanPropertyRowMapper.newInstance(imagens.class));
		model.addAttribute("ims", ims);
		String sql2 = "SELECT * FROM imagens where ativo = 1 order by imagemID" ;
		List<imagens> imsDesc  = jdbcTemplate.query(sql2, BeanPropertyRowMapper.newInstance(imagens.class));
		model.addAttribute("imsDesc", imsDesc);

		return "/pdf";
	}

	@GetMapping("/dash")
	public String dash(Model model, testes teste) {
		String sql = "SELECT * FROM testes where ativo = 1" ;
		List<testes> t  = jdbcTemplate.query(sql, BeanPropertyRowMapper.newInstance(testes.class));
		model.addAttribute("t", t);
		return "/dash";
	}
	
	@GetMapping("/abrirTeste")
	public String abrirTeste(Model model, testes teste) {
		List<testes> te  = TestesRepository.findAll();
		model.addAttribute("t", te);
		return "abrirTesteporID";
	}
	
	@GetMapping("/novoUsuario")
	public String novoUsuario() {
		return "/novoUsuario";
	}
	
	@GetMapping("/PDFImagens")
	public String PDFImagens() {
		return "PDFImagens";
	}
	
	@GetMapping("/abrirTeste/{testeID}")
	public String abrirTesteporID(Model model, testes teste, imagens imagem) {
		Optional<testes> ts = TestesRepository.findById(teste.getTesteID());
		testes t = ts.get();
		model.addAttribute("teste", t);
		
		String sql = "SELECT * FROM imagens where ativo = 1 and url is not null and pagina is not null order by pagina desc" ;
		List<imagens> im  = jdbcTemplate.query(sql, BeanPropertyRowMapper.newInstance(imagens.class));
		model.addAttribute("im", im);
		
		return "/abrirTeste";
	}
	
	@GetMapping("/iniciarTeste")
	public String loginTeste() {
		loginTeste(null);
		return "/loginTeste";
	}
	
	@GetMapping("/excluirTeste/{testeID}")
	public String excluirTeste(testes teste, Model model) {
		
		Optional<testes> ts = TestesRepository.findById(teste.getTesteID());
		testes t = ts.get();

		t.setAtivo(false);
		TestesRepository.save(t);
		model.addAttribute("concluido", "Cadastro concluido com sucesso");
		return dash(model, teste);

	}
	
	@GetMapping("/excluirImagem/{testeID}/{imagemID}")
	public RedirectView excluirAnexo(imagens imagem, Model model, testes teste) {
		
		Optional<imagens> is = ImagensRepository.findById(imagem.getImagemID());
		imagens i = is.get();

		i.setAtivo(false);
		ImagensRepository.save(i);
		model.addAttribute("concluido", "Cadastro concluido com sucesso");
		return redirectTeste(teste);

	}
	
	@GetMapping("/salvarImagem/{testeID}/{imagemID}")
	public RedirectView salvarAnexo(imagens imagem, Model model, testes teste, String descricaoAlt) {
		
		Optional<imagens> is = ImagensRepository.findById(imagem.getImagemID());
		imagens i = is.get();

		i.setDescricao(descricaoAlt);
		System.out.println("entrouuuuuuuuuu"+ descricaoAlt);
		ImagensRepository.save(i);
		model.addAttribute("concluido", "Cadastro concluido com sucesso");
		return redirectTeste(teste);

	}
	
//	POST'S
	
	@PostMapping("/login")
	public String login(Model model, usuarios usuario, testes teste) {
		List<usuarios> uss = UsuariosRepository.findAll();
		for(usuarios us : uss) {
			if(us.getNome().contentEquals(usuario.getNome()) &&  us.getSenha().contentEquals(usuario.getSenha())) {
				return dash(model, teste);
			}else {
				model.addAttribute("message", "Login ou senha errado");
				}
			}
		return null; 
	}
			
	@PostMapping("/registrarUsuario")
	public String novoUsuario(usuarios usuario, String hash, Model model) {
		
		if(hash.contentEquals("10101010") && hash != null) {
			usuarios usuario1 = new usuarios();
			usuario1.setNome(usuario.getNome());
			usuario1.setSenha(usuario.getSenha());
			System.out.println("nome do doido"+ usuario.getNome());
			UsuariosRepository.save(usuario1);
			model.addAttribute("concluido", "Cadastro concluido com sucesso");
			return "/login";

		}else {
			model.addAttribute("message", "hash invalido");
		}
		return "/login";
	}
	
	@PostMapping("/anexarImagem/{testeID}")
	public RedirectView anexarImagem(Model model, imagens imagem, testes teste) {
		imagens i = new imagens();
		
		if(i != null) {
			i.setUrl(imagem.getUrl());
			i.setDescricao(imagem.getDescricao());
			i.setPagina(imagem.getPagina());
			i.setTesteID(imagem.getTesteID());
			ImagensRepository.save(i);
			model.addAttribute("alerta", "Imagem anexa com sucesso");
		}
		
		Optional<testes> ts = TestesRepository.findById(teste.getTesteID());
		testes t = ts.get();
		
		if(t != null) {	
			t.setPassoApasso(teste.getPassoApasso());
			t.setResultadoReal(teste.getResultadoReal());
			t.setStatus(teste.getStatus());
			TestesRepository.save(t);
		}
		
		return salvarTeste(teste, model);
	}
	
	
	@PostMapping("/criarTeste")
	public String criarTeste(testes teste, Model model) {

		if(teste!= null) {	
			testes t = new testes();
			t.setPassoApasso(teste.getPassoApasso());
			t.setResultadoReal(teste.getResultadoReal());
			TestesRepository.save(t);
			model.addAttribute("concluido", "Cadastro concluido com sucesso");
			return "abrirTeste";
		}else{
			System.out.println("entrou no else");
		}
		return null;
	}
	
	@PostMapping("/registrarTeste/{testeID}")
	public RedirectView registrarTeste(testes teste, Model model) {

		Optional<testes> ts = TestesRepository.findById(teste.getTesteID());
		testes t = ts.get();
		
		if(t != null) {	
			t.setPassoApasso(teste.getPassoApasso());
			t.setResultadoReal(teste.getResultadoReal());
			t.setStatus(teste.getStatus());
			TestesRepository.save(t);
			return redirect(teste);
		}else{
			System.out.println("entrou no else");
		}
		return null;
	}

	
//	METODOS
	
	public RedirectView salvarTeste(testes teste, Model model) {

		Optional<testes> ts = TestesRepository.findById(teste.getTesteID());
		testes t = ts.get();
		
		if(t != null) {	
			t.setPassoApasso(teste.getPassoApasso());
			t.setResultadoReal(teste.getResultadoReal());
			t.setStatus(teste.getStatus());
			TestesRepository.save(t);
		}
		return redirectTeste(teste);
	}

	public RedirectView redirect(testes teste) {
		RedirectView r = new RedirectView();
	    r.setUrl("/pdf/{testeID}");
	    return r;
	}
	
	public RedirectView redirectTeste(testes teste) {
		RedirectView r = new RedirectView();
	    r.setUrl("/abrirTeste/{testeID}");
	    return r;
	}
	
	
//	ROTINAS DE TESTES
	
	
	@SuppressWarnings("unused")
	public static <Teste> String loginTeste(WebappQaApplication teste) {
		
				
		System.setProperty("webdriver.chrome.driver", "C:\\teste\\chromedriver.exe");
		ChromeDriver driver = new ChromeDriver();
		driver.get("https://negreiros.juipdv.com.br");
		WebElement login = driver.findElement(By.id("login"));
		WebElement senha = driver.findElement(By.id("senha"));
		WebElement entrar = driver.findElement(By.className("btn-primary"));
		String RelatorioErros= "";
		login.sendKeys("admin2");
		senha.sendKeys("JUI9875321");
		
		if(login != null) {
			entrar.click();
		}else {
			RelatorioErros += "- não logou - login esta vazio";
		}
		try {
			String d = driver.findElement(By.className("col-xs-12")).getText();
		} catch (Exception e) {
			RelatorioErros += "- não logou senha errada";
			System.out.println(RelatorioErros);
			LoginController.loginAdm(teste, driver);
		}
		return null;
		
	}
	
	@SuppressWarnings("unused")
	public static String loginAdm(WebappQaApplication teste, ChromeDriver driver) {

		driver.get("https://negreiros.juipdv.com.br");
		WebElement login = driver.findElement(By.id("login"));
		WebElement senha = driver.findElement(By.id("senha"));
		WebElement entrar = driver.findElement(By.className("btn-primary"));
		String RelatorioErros= "";
		login.sendKeys("admin");
		senha.sendKeys("JUI9875321");

		if(login != null) { 
			entrar.click();
			driver.close();
			return "registrarTeste";
		}else {
			RelatorioErros += "- não logou - login esta vazio";
		}
		try {
			System.out.println(driver.findElement(By.className("nav-md")).getText());
		} catch (Exception e) {
			RelatorioErros += "- não logou senha errada";
			System.out.println(RelatorioErros);
			return "registrarTeste";
		}
		driver.close();
		return "registrarTeste";
	}
	
	

}
