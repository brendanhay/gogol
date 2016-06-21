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
-- Module      : Network.Google.Resource.MapsEngine.Maps.UnPublish
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Unpublish a map asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.maps.unpublish@.
module Network.Google.Resource.MapsEngine.Maps.UnPublish
    (
    -- * REST Resource
      MapsUnPublishResource

    -- * Creating a Request
    , mapsUnPublish
    , MapsUnPublish

    -- * Request Lenses
    , mupId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.maps.unpublish@ method which the
-- 'MapsUnPublish' request conforms to.
type MapsUnPublishResource =
     "mapsengine" :>
       "v1" :>
         "maps" :>
           Capture "id" Text :>
             "unpublish" :>
               QueryParam "alt" AltJSON :>
                 Post '[JSON] PublishResponse

-- | Unpublish a map asset.
--
-- /See:/ 'mapsUnPublish' smart constructor.
newtype MapsUnPublish = MapsUnPublish'
    { _mupId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsUnPublish' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mupId'
mapsUnPublish
    :: Text -- ^ 'mupId'
    -> MapsUnPublish
mapsUnPublish pMupId_ =
    MapsUnPublish'
    { _mupId = pMupId_
    }

-- | The ID of the map.
mupId :: Lens' MapsUnPublish Text
mupId = lens _mupId (\ s a -> s{_mupId = a})

instance GoogleRequest MapsUnPublish where
        type Rs MapsUnPublish = PublishResponse
        type Scopes MapsUnPublish =
             '["https://www.googleapis.com/auth/mapsengine"]
        requestClient MapsUnPublish'{..}
          = go _mupId (Just AltJSON) mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy MapsUnPublishResource)
                      mempty
