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
-- Module      : Network.Google.Resource.Compute.URLMaps.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified UrlMap resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeURLMapsDelete@.
module Network.Google.Resource.Compute.URLMaps.Delete
    (
    -- * REST Resource
      URLMapsDeleteResource

    -- * Creating a Request
    , urlMapsDelete'
    , URLMapsDelete'

    -- * Request Lenses
    , umdURLMap
    , umdProject
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeURLMapsDelete@ method which the
-- 'URLMapsDelete'' request conforms to.
type URLMapsDeleteResource =
     Capture "project" Text :>
       "global" :>
         "urlMaps" :>
           Capture "urlMap" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified UrlMap resource.
--
-- /See:/ 'urlMapsDelete'' smart constructor.
data URLMapsDelete' = URLMapsDelete'
    { _umdURLMap  :: !Text
    , _umdProject :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMapsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umdURLMap'
--
-- * 'umdProject'
urlMapsDelete'
    :: Text -- ^ 'urlMap'
    -> Text -- ^ 'project'
    -> URLMapsDelete'
urlMapsDelete' pUmdURLMap_ pUmdProject_ =
    URLMapsDelete'
    { _umdURLMap = pUmdURLMap_
    , _umdProject = pUmdProject_
    }

-- | Name of the UrlMap resource to delete.
umdURLMap :: Lens' URLMapsDelete' Text
umdURLMap
  = lens _umdURLMap (\ s a -> s{_umdURLMap = a})

-- | Name of the project scoping this request.
umdProject :: Lens' URLMapsDelete' Text
umdProject
  = lens _umdProject (\ s a -> s{_umdProject = a})

instance GoogleRequest URLMapsDelete' where
        type Rs URLMapsDelete' = Operation
        requestClient URLMapsDelete'{..}
          = go _umdProject _umdURLMap (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy URLMapsDeleteResource)
                      mempty
