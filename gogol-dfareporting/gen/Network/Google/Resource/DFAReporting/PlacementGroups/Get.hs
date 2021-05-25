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
-- Module      : Network.Google.Resource.DFAReporting.PlacementGroups.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one placement group by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.placementGroups.get@.
module Network.Google.Resource.DFAReporting.PlacementGroups.Get
    (
    -- * REST Resource
      PlacementGroupsGetResource

    -- * Creating a Request
    , placementGroupsGet
    , PlacementGroupsGet

    -- * Request Lenses
    , pggXgafv
    , pggUploadProtocol
    , pggAccessToken
    , pggUploadType
    , pggProFileId
    , pggId
    , pggCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.placementGroups.get@ method which the
-- 'PlacementGroupsGet' request conforms to.
type PlacementGroupsGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "placementGroups" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] PlacementGroup

-- | Gets one placement group by ID.
--
-- /See:/ 'placementGroupsGet' smart constructor.
data PlacementGroupsGet =
  PlacementGroupsGet'
    { _pggXgafv :: !(Maybe Xgafv)
    , _pggUploadProtocol :: !(Maybe Text)
    , _pggAccessToken :: !(Maybe Text)
    , _pggUploadType :: !(Maybe Text)
    , _pggProFileId :: !(Textual Int64)
    , _pggId :: !(Textual Int64)
    , _pggCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlacementGroupsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pggXgafv'
--
-- * 'pggUploadProtocol'
--
-- * 'pggAccessToken'
--
-- * 'pggUploadType'
--
-- * 'pggProFileId'
--
-- * 'pggId'
--
-- * 'pggCallback'
placementGroupsGet
    :: Int64 -- ^ 'pggProFileId'
    -> Int64 -- ^ 'pggId'
    -> PlacementGroupsGet
placementGroupsGet pPggProFileId_ pPggId_ =
  PlacementGroupsGet'
    { _pggXgafv = Nothing
    , _pggUploadProtocol = Nothing
    , _pggAccessToken = Nothing
    , _pggUploadType = Nothing
    , _pggProFileId = _Coerce # pPggProFileId_
    , _pggId = _Coerce # pPggId_
    , _pggCallback = Nothing
    }


-- | V1 error format.
pggXgafv :: Lens' PlacementGroupsGet (Maybe Xgafv)
pggXgafv = lens _pggXgafv (\ s a -> s{_pggXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pggUploadProtocol :: Lens' PlacementGroupsGet (Maybe Text)
pggUploadProtocol
  = lens _pggUploadProtocol
      (\ s a -> s{_pggUploadProtocol = a})

-- | OAuth access token.
pggAccessToken :: Lens' PlacementGroupsGet (Maybe Text)
pggAccessToken
  = lens _pggAccessToken
      (\ s a -> s{_pggAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pggUploadType :: Lens' PlacementGroupsGet (Maybe Text)
pggUploadType
  = lens _pggUploadType
      (\ s a -> s{_pggUploadType = a})

-- | User profile ID associated with this request.
pggProFileId :: Lens' PlacementGroupsGet Int64
pggProFileId
  = lens _pggProFileId (\ s a -> s{_pggProFileId = a})
      . _Coerce

-- | Placement group ID.
pggId :: Lens' PlacementGroupsGet Int64
pggId
  = lens _pggId (\ s a -> s{_pggId = a}) . _Coerce

-- | JSONP
pggCallback :: Lens' PlacementGroupsGet (Maybe Text)
pggCallback
  = lens _pggCallback (\ s a -> s{_pggCallback = a})

instance GoogleRequest PlacementGroupsGet where
        type Rs PlacementGroupsGet = PlacementGroup
        type Scopes PlacementGroupsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PlacementGroupsGet'{..}
          = go _pggProFileId _pggId _pggXgafv
              _pggUploadProtocol
              _pggAccessToken
              _pggUploadType
              _pggCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementGroupsGetResource)
                      mempty
