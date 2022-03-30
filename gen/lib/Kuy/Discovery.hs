-- | Each API's discovery document describes the surface of the API, how to
-- access the API and how API requests and responses are structured.
--
-- The information provided by the discovery document includes
-- API-level properties such as an API description, resource schemas,
-- authentication scopes, and methods.
module Kuy.Discovery
  ( module Export,
  )
where

import Kuy.Discovery.Description as Export
import Kuy.Discovery.Directory as Export
import Kuy.Discovery.Label as Export
import Kuy.Discovery.Name as Export
import Kuy.Discovery.Schema as Export
