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
  
  withProgress(message = 'Saving the new locality...', value = 0, {  
  incProgress(3/15)
    
  #path <- fbglobal::get_base_dir()
  #pvsdoc_file <- "Diccionario_PVS.docx"
  ruta <- system.file("extdata", "Diccionario_PVS.docx", package = "fbdocs")
  #path <- paste(path, pvsdoc_file, sep = "\\")
  shell.exec(ruta)
  
    })
  })
  
  
}