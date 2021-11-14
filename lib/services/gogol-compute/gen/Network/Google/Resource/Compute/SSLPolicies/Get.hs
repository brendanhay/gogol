{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Compute.SSLPolicies.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all of the ordered rules present in a single specified policy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.sslPolicies.get@.
module Network.Google.Resource.Compute.SSLPolicies.Get
    (
    -- * REST Resource
      SSLPoliciesGetResource

    -- * Creating a Request
    , sslPoliciesGet
    , SSLPoliciesGet

    -- * Request Lenses
    , spgSSLPolicy
    , spgProject
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.sslPolicies.get@ method which the
-- 'SSLPoliciesGet' request conforms to.
type SSLPoliciesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "sslPolicies" :>
                 Capture "sslPolicy" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] SSLPolicy

-- | Lists all of the ordered rules present in a single specified policy.
--
-- /See:/ 'sslPoliciesGet' smart constructor.
data SSLPoliciesGet =
  SSLPoliciesGet'
    { _spgSSLPolicy :: !Text
    , _spgProject :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SSLPoliciesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spgSSLPolicy'
--
-- * 'spgProject'
sslPoliciesGet
    :: Text -- ^ 'spgSSLPolicy'
    -> Text -- ^ 'spgProject'
    -> SSLPoliciesGet
sslPoliciesGet pSpgSSLPolicy_ pSpgProject_ =
  SSLPoliciesGet' {_spgSSLPolicy = pSpgSSLPolicy_, _spgProject = pSpgProject_}


-- | Name of the SSL policy to update. The name must be 1-63 characters long,
-- and comply with RFC1035.
spgSSLPolicy :: Lens' SSLPoliciesGet Text
spgSSLPolicy
  = lens _spgSSLPolicy (\ s a -> s{_spgSSLPolicy = a})

-- | Project ID for this request.
spgProject :: Lens' SSLPoliciesGet Text
spgProject
  = lens _spgProject (\ s a -> s{_spgProject = a})

instance GoogleRequest SSLPoliciesGet where
        type Rs SSLPoliciesGet = SSLPolicy
        type Scopes SSLPoliciesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient SSLPoliciesGet'{..}
          = go _spgProject _spgSSLPolicy (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy SSLPoliciesGetResource)
                      mempty
