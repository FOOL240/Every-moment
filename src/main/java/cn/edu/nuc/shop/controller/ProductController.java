package cn.edu.nuc.shop.controller;


import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.edu.nuc.shop.entiry.Product;
import cn.edu.nuc.shop.service.interfaces.ProductService;
import cn.edu.nuc.shop.util.IPTimeStamp;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String listProduct(@RequestParam(name="currpage",defaultValue="1") int currpage,Model model){
		PageHelper.startPage(currpage,2);
		List<Product> list = productService.listProduct();
		PageInfo pageInfo = new PageInfo(list,2);
		model.addAttribute(pageInfo);
		return "product/list";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String toAddProduct(@ModelAttribute("product") Product products){
		
		return "product/add";
	}
	
	
	//增加商品信息
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String AddProduct(Product product, @RequestParam("file") MultipartFile file,
			HttpServletRequest request) throws IOException {
		
		System.out.println("商品对象："+product);
			//获取文件 存储位置
			String realPath = request.getSession().getServletContext()
					.getRealPath("/upload");
			
			File pathFile = new File(realPath);
			
			if (!pathFile.exists()) {
				//文件夹不存 创建文件
				pathFile.mkdirs();
			}
				
				System.out.println("文件类型："+file.getContentType());
				System.out.println("文件名称："+file.getOriginalFilename());
				System.out.println("文件大小:"+file.getSize());
				System.out.println(".................................................");
				//将文件copy上传到服务器
				//file.transferTo(new File(realPath + "/" + file.getOriginalFilename()));
				
				IPTimeStamp ip = new IPTimeStamp();
				
				System.out.println(ip.getTimeStamp());
				
				String ext =FilenameUtils.getExtension(file.getOriginalFilename());
				
				String newfilename= ip.getTimeStamp() + "."+ ext;
				
				FileUtils.copyInputStreamToFile(file.getInputStream(), 
						new File(realPath, newfilename));
			//获取modelandview对象
				
			
		
				/**
		         * 上传图片
		         */
		        //图片上传成功后，将图片的地址写到数据库
		        String filePath = "D:\\JAVA\\shop\\image";//保存图片的路径
		        //获取原始图片的拓展名
		        String originalFilename = file.getOriginalFilename();
		        //新的文件名字
		        String newFileName = UUID.randomUUID()+originalFilename;
		        //封装上传文件位置的全路径
		        File targetFile = new File(filePath,newFileName); 
		        //把本地文件上传到封装上传文件位置的全路径
		        file.transferTo(targetFile);
		        product.setPpicture(newFileName);
		
		productService.addProduct(product);
		
		
		return "redirect:list";
		 
	}
	//删除
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String deleteProduct(Product product){
		
		productService.deleteProduct(product);
		
		return "redirect:list";
	}
	//改
	@RequestMapping(value="/edit",method=RequestMethod.GET)
	public String toedit(Product product,ModelMap map){
		
		Product pro = productService.findById(product.getPid());
		
		map.addAttribute("product", pro);
		
		
		return "product/edit";
	}
	
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	public String edit(Product product, @RequestParam("file") MultipartFile file,
			HttpServletRequest request) throws IOException{
		
		
		Product oldproduct = productService.findById(product.getPid());
		//获取文件 存储位置
		if(file.getOriginalFilename()!=null && !file.getOriginalFilename().equals("")){
			String realPath = request.getSession().getServletContext()
					.getRealPath("/upload");
			
			File oldfile = new File(realPath +"/"+ oldproduct.getPpicture());
			oldfile.delete();
			
			File pathFile = new File(realPath);
			
			if (!pathFile.exists()) {
				//文件夹不存 创建文件
				pathFile.mkdirs();
			}
				System.out.println("文件类型："+file.getContentType());
				System.out.println("文件名称："+file.getOriginalFilename());
				System.out.println("文件大小:"+file.getSize());
				System.out.println(".................................................");
				//将文件copy上传到服务器
				//file.transferTo(new File(realPath + "/" + file.getOriginalFilename()));
				
				IPTimeStamp ip = new IPTimeStamp();
				String ext =FilenameUtils.getExtension(file.getOriginalFilename());
				
				String newfilename= ip.getTimeStamp() + "."+ ext;
				
				
				FileUtils.copyInputStreamToFile(file.getInputStream(), 
						new File(realPath, newfilename));
			//获取modelandview对象
				
				product.setPpicture(newfilename);
		}	
		
		if(file.getOriginalFilename()==null || "".equals(file.getOriginalFilename())){
		  product.setPpicture(productService.findById(product.getPid()).getPpicture());
		}
		productService.updateProduct(product);
	
		
		return "redirect:list";
	}
	//查询
	@RequestMapping(value="/find",method=RequestMethod.POST)
	public String findByPname(@RequestParam(name="currpage",defaultValue="1") int currpage,@RequestParam("pname") String pname,Model model){
		
		System.out.println(pname+"---------------------------");
		PageHelper.startPage(currpage,2);
		List<Product> list = productService.findByName(pname);
		PageInfo pageInfo = new PageInfo(list,2);
		model.addAttribute(pageInfo);
		
		return "product/list";
	}
	
	//主页
	@RequestMapping(value="/frontlist",method=RequestMethod.GET)
	public String frontlist(Model model){
		
		List<Product> listnew = productService.frontlistNew();
		
		List<Product> listhot = productService.frontlistHot();
		
		model.addAttribute("listnew", listnew);
		model.addAttribute("listhot", listhot);
		
		return "forward:/index.jsp";
	}
	
		@RequestMapping(value="/detail",method=RequestMethod.GET)
		public String detail(Product product,Model model){
			
			Product pro = productService.findById(product.getPid());
			
			model.addAttribute("product", pro);
			
			return "forward:/detail.jsp";
		}
	
	
	
}
