#' Server for HiDAP documents
#' 
#' @param input shinyserver input 
#' @param output shinyserver output
#' @param session shinyserver session
#' @param values reactive values
#' @author Omar Benites
#' @export

fbdocs_server <- function(input,output,session, values){

  shiny::observeEvent(input$docpvsdic_launch, {
  
  withProgress(message = 'Exporting manual...', value = 0, {  
  incProgress(3/15)
    
  #path <- fbglobal::get_base_dir()
  #pvsdoc_file <- "Diccionario_PVS.docx"
  ruta <- system.file("extdata", "PVS_Dictionary.pdf", package = "fbdocs")
  #path <- paste(path, pvsdoc_file, sep = "\\")
  shell.exec(ruta)
  
    })
  })
  
  shiny::observeEvent(input$dochidap_install_launch_en, {
    
    withProgress(message = 'Exporting manual...', value = 0, {  
      incProgress(3/15)
      
      #path <- fbglobal::get_base_dir()
      #pvsdoc_file <- "Diccionario_PVS.docx"
      ruta <- system.file("extdata", "Installation_Install_HIDAP.pdf", package = "fbdocs")
      #path <- paste(path, pvsdoc_file, sep = "\\")
      shell.exec(ruta)
      
    })
  })
  
  
  shiny::observeEvent(input$dochidap_install_launch_es, {
    
    withProgress(message = 'Exporting manual...', value = 0, {  
      incProgress(3/15)
      
      #path <- fbglobal::get_base_dir()
      #pvsdoc_file <- "Diccionario_PVS.docx"
      ruta <- system.file("extdata", "Instalacion_Instalar_HIDAP.pdf", package = "fbdocs")
      #path <- paste(path, pvsdoc_file, sep = "\\")
      shell.exec(ruta)
      
    })
  })
  
  shiny::observeEvent(input$dochidap_navig_launch_en, {
    
    withProgress(message = 'Exporting manual...', value = 0, {  
      incProgress(3/15)
      
      #path <- fbglobal::get_base_dir()
      #pvsdoc_file <- "Diccionario_PVS.docx"
      ruta <- system.file("extdata", "Tutorial_Navigate_HIDAP.pdf", package = "fbdocs")
      #path <- paste(path, pvsdoc_file, sep = "\\")
      shell.exec(ruta)
      
    })
  })
  
  
  shiny::observeEvent(input$dochidap_navig_launch_es, {
    
    withProgress(message = 'Exporting manual...', value = 0, {  
      incProgress(3/15)
      
      #path <- fbglobal::get_base_dir()
      #pvsdoc_file <- "Diccionario_PVS.docx"
      ruta <- system.file("extdata", "Tutorial_Navegar_HIDAP.pdf", package = "fbdocs")
      #path <- paste(path, pvsdoc_file, sep = "\\")
      shell.exec(ruta)
      
    })
  })
  
  
  
  
  
  
  
  
}