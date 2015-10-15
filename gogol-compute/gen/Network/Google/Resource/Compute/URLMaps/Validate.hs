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
-- Module      : Network.Google.Resource.Compute.URLMaps.Validate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Run static validation for the UrlMap. In particular, the tests of the
-- provided UrlMap will be run. Calling this method does NOT create the
-- UrlMap.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeURLMapsValidate@.
module Network.Google.Resource.Compute.URLMaps.Validate
    (
    -- * REST Resource
      URLMapsValidateResource

    -- * Creating a Request
    , urlMapsValidate'
    , URLMapsValidate'

    -- * Request Lenses
    , umvURLMap
    , umvProject
    , umvPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeURLMapsValidate@ method which the
-- 'URLMapsValidate'' request conforms to.
type URLMapsValidateResource =
     Capture "project" Text :>
       "global" :>
         "urlMaps" :>
           Capture "urlMap" Text :>
             "validate" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] URLMapsValidateRequest :>
                   Post '[JSON] URLMapsValidateResponse

-- | Run static validation for the UrlMap. In particular, the tests of the
-- provided UrlMap will be run. Calling this method does NOT create the
-- UrlMap.
--
-- /See:/ 'urlMapsValidate'' smart constructor.
data URLMapsValidate' = URLMapsValidate'
    { _umvURLMap  :: !Text
    , _umvProject :: !Text
    , _umvPayload :: !URLMapsValidateRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMapsValidate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umvURLMap'
--
-- * 'umvProject'
--
-- * 'umvPayload'
urlMapsValidate'
    :: Text -- ^ 'urlMap'
    -> Text -- ^ 'project'
    -> URLMapsValidateRequest -- ^ 'payload'
    -> URLMapsValidate'
urlMapsValidate' pUmvURLMap_ pUmvProject_ pUmvPayload_ =
    URLMapsValidate'
    { _umvURLMap = pUmvURLMap_
    , _umvProject = pUmvProject_
    , _umvPayload = pUmvPayload_
    }

-- | Name of the UrlMap resource to be validated as.
umvURLMap :: Lens' URLMapsValidate' Text
umvURLMap
  = lens _umvURLMap (\ s a -> s{_umvURLMap = a})

-- | Name of the project scoping this request.
umvProject :: Lens' URLMapsValidate' Text
umvProject
  = lens _umvProject (\ s a -> s{_umvProject = a})

-- | Multipart request metadata.
umvPayload :: Lens' URLMapsValidate' URLMapsValidateRequest
umvPayload
  = lens _umvPayload (\ s a -> s{_umvPayload = a})

instance GoogleRequest URLMapsValidate' where
        type Rs URLMapsValidate' = URLMapsValidateResponse
        requestClient URLMapsValidate'{..}
          = go _umvProject _umvURLMap (Just AltJSON)
              _umvPayload
              compute
          where go
                  = buildClient
                      (Proxy :: Proxy URLMapsValidateResource)
                      mempty
