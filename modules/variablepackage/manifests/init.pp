class variablepackage {
#local scope
#$packagename = 'wget'
package {"somepack": 
          name => $packagename,
          ensure => installed
         }
}
