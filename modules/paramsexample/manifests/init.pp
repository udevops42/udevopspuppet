class paramsexample 
($pacakge = $paramsexample::params::package)
inherits paramsexample::params
{
package { 'somepackage':
           name => $package,
           ensure => installed
         }
}
