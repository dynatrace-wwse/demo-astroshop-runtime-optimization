#!/bin/bash
# ======================================================================
#          ------- Custom Functions -------                            #
#  Space for adding custom functions so each repo can customize as.    # 
#  needed.                                                             #
# ======================================================================

customFunction(){
  printInfoSection "This is a custom function that calculates 1 + 1"

  printInfo "1 + 1 = $(( 1 + 1 ))"

}


deployMemoryProblem(){

  printInfoSection "Rolling out Memory Problem"
  
  cd $REPO_PATH/opentelemetry-demo/extras/azdo-integration/alpha-cluster/k8s/
  
  bash agent_do_rollout.sh -v 1.12.2 
  
  cd -

  #    "01" | "05" | "09")
  #      VERSION="1.12.1"
  #      PROBLEM="cpu"
  #      ;;
  #  "02" | "06" | "10")
  #      VERSION="1.12.2"
  #      PROBLEM="memory"
  #      ;;
  #  "03" | "07"| "11")
  #      VERSION="1.12.3"
  #      PROBLEM="n+1"


}