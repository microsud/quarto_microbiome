build_my_report <- function(qmd_file = NULL,
                            pseq_path = NULL,
                            primary_var = NULL) {
    
    {
        # extracting the name of the source .qmd file
        base_name <- qmd_file
        base_name <- gsub(".qmd", "", base_name)
        # render the file 
        quarto::quarto_render(input = qmd_file,
                              # We add the suffix '_report' to output html file
                              output_file = paste0(base_name, "_report.html"),
                              quiet = FALSE,
                              # supply the params arguments 
                              execute_params = list("pseq_path" = pseq_path,
                                                    "primary_var" = primary_var),
                              execute_debug = FALSE,
                              cache = NULL,
                              cache_refresh = FALSE,
                              debug = FALSE)
    }
}