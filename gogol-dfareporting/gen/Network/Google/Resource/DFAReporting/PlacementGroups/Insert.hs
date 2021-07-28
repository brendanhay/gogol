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
-- Module      : Network.Google.Resource.DFAReporting.PlacementGroups.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new placement group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.placementGroups.insert@.
module Network.Google.Resource.DFAReporting.PlacementGroups.Insert
    (
    -- * REST Resource
      PlacementGroupsInsertResource

    -- * Creating a Request
    , placementGroupsInsert
    , PlacementGroupsInsert

    -- * Request Lenses
    , pgiXgafv
    , pgiUploadProtocol
    , pgiAccessToken
    , pgiUploadType
    , pgiProFileId
    , pgiPayload
    , pgiCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.placementGroups.insert@ method which the
-- 'PlacementGroupsInsert' request conforms to.
type PlacementGroupsInsertResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "placementGroups" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] PlacementGroup :>
                             Post '[JSON] PlacementGroup

-- | Inserts a new placement group.
--
-- /See:/ 'placementGroupsInsert' smart constructor.
data PlacementGroupsInsert =
  PlacementGroupsInsert'
    { _pgiXgafv :: !(Maybe Xgafv)
    , _pgiUploadProtocol :: !(Maybe Text)
    , _pgiAccessToken :: !(Maybe Text)
    , _pgiUploadType :: !(Maybe Text)
    , _pgiProFileId :: !(Textual Int64)
    , _pgiPayload :: !PlacementGroup
    , _pgiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlacementGroupsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgiXgafv'
--
-- * 'pgiUploadProtocol'
--
-- * 'pgiAccessToken'
--
-- * 'pgiUploadType'
--
-- * 'pgiProFileId'
--
-- * 'pgiPayload'
--
-- * 'pgiCallback'
placementGroupsInsert
    :: Int64 -- ^ 'pgiProFileId'
    -> PlacementGroup -- ^ 'pgiPayload'
    -> PlacementGroupsInsert
placementGroupsInsert pPgiProFileId_ pPgiPayload_ =
  PlacementGroupsInsert'
    { _pgiXgafv = Nothing
    , _pgiUploadProtocol = Nothing
    , _pgiAccessToken = Nothing
    , _pgiUploadType = Nothing
    , _pgiProFileId = _Coerce # pPgiProFileId_
    , _pgiPayload = pPgiPayload_
    , _pgiCallback = Nothing
    }


-- | V1 error format.
pgiXgafv :: Lens' PlacementGroupsInsert (Maybe Xgafv)
pgiXgafv = lens _pgiXgafv (\ s a -> s{_pgiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgiUploadProtocol :: Lens' PlacementGroupsInsert (Maybe Text)
pgiUploadProtocol
  = lens _pgiUploadProtocol
      (\ s a -> s{_pgiUploadProtocol = a})

-- | OAuth access token.
pgiAccessToken :: Lens' PlacementGroupsInsert (Maybe Text)
pgiAccessToken
  = lens _pgiAccessToken
      (\ s a -> s{_pgiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgiUploadType :: Lens' PlacementGroupsInsert (Maybe Text)
pgiUploadType
  = lens _pgiUploadType
      (\ s a -> s{_pgiUploadType = a})

-- | User profile ID associated with this request.
pgiProFileId :: Lens' PlacementGroupsInsert Int64
pgiProFileId
  = lens _pgiProFileId (\ s a -> s{_pgiProFileId = a})
      . _Coerce

-- | Multipart request metadata.
pgiPayload :: Lens' PlacementGroupsInsert PlacementGroup
pgiPayload
  = lens _pgiPayload (\ s a -> s{_pgiPayload = a})

-- | JSONP
pgiCallback :: Lens' PlacementGroupsInsert (Maybe Text)
pgiCallback
  = lens _pgiCallback (\ s a -> s{_pgiCallback = a})

instance GoogleRequest PlacementGroupsInsert where
        type Rs PlacementGroupsInsert = PlacementGroup
        type Scopes PlacementGroupsInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PlacementGroupsInsert'{..}
          = go _pgiProFileId _pgiXgafv _pgiUploadProtocol
              _pgiAccessToken
              _pgiUploadType
              _pgiCallback
              (Just AltJSON)
              _pgiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementGroupsInsertResource)
                      mempty
