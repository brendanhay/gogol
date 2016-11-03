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
-- Module      : Network.Google.Resource.Compute.URLMaps.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified UrlMap resource with the data included in the
-- request. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.urlMaps.patch@.
module Network.Google.Resource.Compute.URLMaps.Patch
    (
    -- * REST Resource
      URLMapsPatchResource

    -- * Creating a Request
    , urlMapsPatch
    , URLMapsPatch

    -- * Request Lenses
    , umpURLMap
    , umpProject
    , umpPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.urlMaps.patch@ method which the
-- 'URLMapsPatch' request conforms to.
type URLMapsPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "urlMaps" :>
                 Capture "urlMap" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] URLMap :> Patch '[JSON] Operation

-- | Updates the specified UrlMap resource with the data included in the
-- request. This method supports patch semantics.
--
-- /See:/ 'urlMapsPatch' smart constructor.
data URLMapsPatch = URLMapsPatch'
    { _umpURLMap  :: !Text
    , _umpProject :: !Text
    , _umpPayload :: !URLMap
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMapsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umpURLMap'
--
-- * 'umpProject'
--
-- * 'umpPayload'
urlMapsPatch
    :: Text -- ^ 'umpURLMap'
    -> Text -- ^ 'umpProject'
    -> URLMap -- ^ 'umpPayload'
    -> URLMapsPatch
urlMapsPatch pUmpURLMap_ pUmpProject_ pUmpPayload_ =
    URLMapsPatch'
    { _umpURLMap = pUmpURLMap_
    , _umpProject = pUmpProject_
    , _umpPayload = pUmpPayload_
    }

-- | Name of the UrlMap resource to update.
umpURLMap :: Lens' URLMapsPatch Text
umpURLMap
  = lens _umpURLMap (\ s a -> s{_umpURLMap = a})

-- | Project ID for this request.
umpProject :: Lens' URLMapsPatch Text
umpProject
  = lens _umpProject (\ s a -> s{_umpProject = a})

-- | Multipart request metadata.
umpPayload :: Lens' URLMapsPatch URLMap
umpPayload
  = lens _umpPayload (\ s a -> s{_umpPayload = a})

instance GoogleRequest URLMapsPatch where
        type Rs URLMapsPatch = Operation
        type Scopes URLMapsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient URLMapsPatch'{..}
          = go _umpProject _umpURLMap (Just AltJSON)
              _umpPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy URLMapsPatchResource)
                      mempty
