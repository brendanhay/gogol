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
-- | Return all parent ids of the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineAssetsParentsList@.
module Network.Google.Resource.MapsEngine.Assets.Parents.List
    (
    -- * REST Resource
      AssetsParentsListResource

    -- * Creating a Request
    , assetsParentsList'
    , AssetsParentsList'

    -- * Request Lenses
    , assId
    , assPageToken
    , assMaxResults
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineAssetsParentsList@ method which the
-- 'AssetsParentsList'' request conforms to.
type AssetsParentsListResource =
     "assets" :>
       Capture "id" Text :>
         "parents" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] ParentsListResponse

-- | Return all parent ids of the specified asset.
--
-- /See:/ 'assetsParentsList'' smart constructor.
data AssetsParentsList' = AssetsParentsList'
    { _assId         :: !Text
    , _assPageToken  :: !(Maybe Text)
    , _assMaxResults :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AssetsParentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assId'
--
-- * 'assPageToken'
--
-- * 'assMaxResults'
assetsParentsList'
    :: Text -- ^ 'id'
    -> AssetsParentsList'
assetsParentsList' pAssId_ =
    AssetsParentsList'
    { _assId = pAssId_
    , _assPageToken = Nothing
    , _assMaxResults = Nothing
    }

-- | The ID of the asset whose parents will be listed.
assId :: Lens' AssetsParentsList' Text
assId = lens _assId (\ s a -> s{_assId = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
assPageToken :: Lens' AssetsParentsList' (Maybe Text)
assPageToken
  = lens _assPageToken (\ s a -> s{_assPageToken = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 50.
assMaxResults :: Lens' AssetsParentsList' (Maybe Word32)
assMaxResults
  = lens _assMaxResults
      (\ s a -> s{_assMaxResults = a})

instance GoogleRequest AssetsParentsList' where
        type Rs AssetsParentsList' = ParentsListResponse
        requestClient AssetsParentsList'{..}
          = go _assId _assPageToken _assMaxResults
              (Just AltJSON)
              mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AssetsParentsListResource)
                      mempty
