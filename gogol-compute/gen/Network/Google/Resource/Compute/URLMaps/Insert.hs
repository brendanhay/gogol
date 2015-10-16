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
-- Module      : Network.Google.Resource.Compute.URLMaps.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a UrlMap resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeURLMapsInsert@.
module Network.Google.Resource.Compute.URLMaps.Insert
    (
    -- * REST Resource
      URLMapsInsertResource

    -- * Creating a Request
    , urlMapsInsert'
    , URLMapsInsert'

    -- * Request Lenses
    , umiProject
    , umiPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeURLMapsInsert@ method which the
-- 'URLMapsInsert'' request conforms to.
type URLMapsInsertResource =
     Capture "project" Text :>
       "global" :>
         "urlMaps" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] URLMap :> Post '[JSON] Operation

-- | Creates a UrlMap resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'urlMapsInsert'' smart constructor.
data URLMapsInsert' = URLMapsInsert'
    { _umiProject :: !Text
    , _umiPayload :: !URLMap
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMapsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umiProject'
--
-- * 'umiPayload'
urlMapsInsert'
    :: Text -- ^ 'project'
    -> URLMap -- ^ 'payload'
    -> URLMapsInsert'
urlMapsInsert' pUmiProject_ pUmiPayload_ =
    URLMapsInsert'
    { _umiProject = pUmiProject_
    , _umiPayload = pUmiPayload_
    }

-- | Name of the project scoping this request.
umiProject :: Lens' URLMapsInsert' Text
umiProject
  = lens _umiProject (\ s a -> s{_umiProject = a})

-- | Multipart request metadata.
umiPayload :: Lens' URLMapsInsert' URLMap
umiPayload
  = lens _umiPayload (\ s a -> s{_umiPayload = a})

instance GoogleRequest URLMapsInsert' where
        type Rs URLMapsInsert' = Operation
        requestClient URLMapsInsert'{..}
          = go _umiProject (Just AltJSON) _umiPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy URLMapsInsertResource)
                      mempty
