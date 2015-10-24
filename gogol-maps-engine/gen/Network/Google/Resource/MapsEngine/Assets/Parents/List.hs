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
-- Module      : Network.Google.Resource.MapsEngine.Assets.Parents.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return all parent ids of the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.assets.parents.list@.
module Network.Google.Resource.MapsEngine.Assets.Parents.List
    (
    -- * REST Resource
      AssetsParentsListResource

    -- * Creating a Request
    , assetsParentsList
    , AssetsParentsList

    -- * Request Lenses
    , aplId
    , aplPageToken
    , aplMaxResults
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.assets.parents.list@ method which the
-- 'AssetsParentsList' request conforms to.
type AssetsParentsListResource =
     "mapsengine" :>
       "v1" :>
         "assets" :>
           Capture "id" Text :>
             "parents" :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" (Textual Word32) :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ParentsListResponse

-- | Return all parent ids of the specified asset.
--
-- /See:/ 'assetsParentsList' smart constructor.
data AssetsParentsList = AssetsParentsList
    { _aplId         :: !Text
    , _aplPageToken  :: !(Maybe Text)
    , _aplMaxResults :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AssetsParentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aplId'
--
-- * 'aplPageToken'
--
-- * 'aplMaxResults'
assetsParentsList
    :: Text -- ^ 'aplId'
    -> AssetsParentsList
assetsParentsList pAplId_ =
    AssetsParentsList
    { _aplId = pAplId_
    , _aplPageToken = Nothing
    , _aplMaxResults = Nothing
    }

-- | The ID of the asset whose parents will be listed.
aplId :: Lens' AssetsParentsList Text
aplId = lens _aplId (\ s a -> s{_aplId = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
aplPageToken :: Lens' AssetsParentsList (Maybe Text)
aplPageToken
  = lens _aplPageToken (\ s a -> s{_aplPageToken = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 50.
aplMaxResults :: Lens' AssetsParentsList (Maybe Word32)
aplMaxResults
  = lens _aplMaxResults
      (\ s a -> s{_aplMaxResults = a})
      . mapping _Coerce

instance GoogleRequest AssetsParentsList where
        type Rs AssetsParentsList = ParentsListResponse
        requestClient AssetsParentsList{..}
          = go _aplId _aplPageToken _aplMaxResults
              (Just AltJSON)
              mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AssetsParentsListResource)
                      mempty
