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
-- Module      : Network.Google.Resource.MapsEngine.Maps.Publish
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Publish a map asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineMapsPublish@.
module Network.Google.Resource.MapsEngine.Maps.Publish
    (
    -- * REST Resource
      MapsPublishResource

    -- * Creating a Request
    , mapsPublish'
    , MapsPublish'

    -- * Request Lenses
    , mForce
    , mId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineMapsPublish@ method which the
-- 'MapsPublish'' request conforms to.
type MapsPublishResource =
     "maps" :>
       Capture "id" Text :>
         "publish" :>
           QueryParam "force" Bool :>
             QueryParam "alt" AltJSON :>
               Post '[JSON] PublishResponse

-- | Publish a map asset.
--
-- /See:/ 'mapsPublish'' smart constructor.
data MapsPublish' = MapsPublish'
    { _mForce :: !(Maybe Bool)
    , _mId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsPublish'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mForce'
--
-- * 'mId'
mapsPublish'
    :: Text -- ^ 'id'
    -> MapsPublish'
mapsPublish' pMId_ =
    MapsPublish'
    { _mForce = Nothing
    , _mId = pMId_
    }

-- | If set to true, the API will allow publication of the map even if it\'s
-- out of date. If false, the map must have a processingStatus of complete
-- before publishing.
mForce :: Lens' MapsPublish' (Maybe Bool)
mForce = lens _mForce (\ s a -> s{_mForce = a})

-- | The ID of the map.
mId :: Lens' MapsPublish' Text
mId = lens _mId (\ s a -> s{_mId = a})

instance GoogleRequest MapsPublish' where
        type Rs MapsPublish' = PublishResponse
        requestClient MapsPublish'{..}
          = go _mId _mForce (Just AltJSON) mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy MapsPublishResource)
                      mempty
