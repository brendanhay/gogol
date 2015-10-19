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
-- Module      : Network.Google.Resource.Compute.URLMaps.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the entire content of the UrlMap resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.urlMaps.update@.
module Network.Google.Resource.Compute.URLMaps.Update
    (
    -- * REST Resource
      URLMapsUpdateResource

    -- * Creating a Request
    , urlMapsUpdate'
    , URLMapsUpdate'

    -- * Request Lenses
    , umuURLMap
    , umuProject
    , umuPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.urlMaps.update@ method which the
-- 'URLMapsUpdate'' request conforms to.
type URLMapsUpdateResource =
     Capture "project" Text :>
       "global" :>
         "urlMaps" :>
           Capture "urlMap" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] URLMap :> Put '[JSON] Operation

-- | Update the entire content of the UrlMap resource.
--
-- /See:/ 'urlMapsUpdate'' smart constructor.
data URLMapsUpdate' = URLMapsUpdate'
    { _umuURLMap  :: !Text
    , _umuProject :: !Text
    , _umuPayload :: !URLMap
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMapsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umuURLMap'
--
-- * 'umuProject'
--
-- * 'umuPayload'
urlMapsUpdate'
    :: Text -- ^ 'umuURLMap'
    -> Text -- ^ 'umuProject'
    -> URLMap -- ^ 'umuPayload'
    -> URLMapsUpdate'
urlMapsUpdate' pUmuURLMap_ pUmuProject_ pUmuPayload_ =
    URLMapsUpdate'
    { _umuURLMap = pUmuURLMap_
    , _umuProject = pUmuProject_
    , _umuPayload = pUmuPayload_
    }

-- | Name of the UrlMap resource to update.
umuURLMap :: Lens' URLMapsUpdate' Text
umuURLMap
  = lens _umuURLMap (\ s a -> s{_umuURLMap = a})

-- | Name of the project scoping this request.
umuProject :: Lens' URLMapsUpdate' Text
umuProject
  = lens _umuProject (\ s a -> s{_umuProject = a})

-- | Multipart request metadata.
umuPayload :: Lens' URLMapsUpdate' URLMap
umuPayload
  = lens _umuPayload (\ s a -> s{_umuPayload = a})

instance GoogleRequest URLMapsUpdate' where
        type Rs URLMapsUpdate' = Operation
        requestClient URLMapsUpdate'{..}
          = go _umuProject _umuURLMap (Just AltJSON)
              _umuPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy URLMapsUpdateResource)
                      mempty
