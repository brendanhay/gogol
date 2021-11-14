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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one floodlight activity group by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.floodlightActivityGroups.get@.
module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Get
    (
    -- * REST Resource
      FloodlightActivityGroupsGetResource

    -- * Creating a Request
    , floodlightActivityGroupsGet
    , FloodlightActivityGroupsGet

    -- * Request Lenses
    , faggXgafv
    , faggUploadProtocol
    , faggAccessToken
    , faggUploadType
    , faggProFileId
    , faggId
    , faggCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightActivityGroups.get@ method which the
-- 'FloodlightActivityGroupsGet' request conforms to.
type FloodlightActivityGroupsGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "floodlightActivityGroups" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] FloodlightActivityGroup

-- | Gets one floodlight activity group by ID.
--
-- /See:/ 'floodlightActivityGroupsGet' smart constructor.
data FloodlightActivityGroupsGet =
  FloodlightActivityGroupsGet'
    { _faggXgafv :: !(Maybe Xgafv)
    , _faggUploadProtocol :: !(Maybe Text)
    , _faggAccessToken :: !(Maybe Text)
    , _faggUploadType :: !(Maybe Text)
    , _faggProFileId :: !(Textual Int64)
    , _faggId :: !(Textual Int64)
    , _faggCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FloodlightActivityGroupsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'faggXgafv'
--
-- * 'faggUploadProtocol'
--
-- * 'faggAccessToken'
--
-- * 'faggUploadType'
--
-- * 'faggProFileId'
--
-- * 'faggId'
--
-- * 'faggCallback'
floodlightActivityGroupsGet
    :: Int64 -- ^ 'faggProFileId'
    -> Int64 -- ^ 'faggId'
    -> FloodlightActivityGroupsGet
floodlightActivityGroupsGet pFaggProFileId_ pFaggId_ =
  FloodlightActivityGroupsGet'
    { _faggXgafv = Nothing
    , _faggUploadProtocol = Nothing
    , _faggAccessToken = Nothing
    , _faggUploadType = Nothing
    , _faggProFileId = _Coerce # pFaggProFileId_
    , _faggId = _Coerce # pFaggId_
    , _faggCallback = Nothing
    }


-- | V1 error format.
faggXgafv :: Lens' FloodlightActivityGroupsGet (Maybe Xgafv)
faggXgafv
  = lens _faggXgafv (\ s a -> s{_faggXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
faggUploadProtocol :: Lens' FloodlightActivityGroupsGet (Maybe Text)
faggUploadProtocol
  = lens _faggUploadProtocol
      (\ s a -> s{_faggUploadProtocol = a})

-- | OAuth access token.
faggAccessToken :: Lens' FloodlightActivityGroupsGet (Maybe Text)
faggAccessToken
  = lens _faggAccessToken
      (\ s a -> s{_faggAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
faggUploadType :: Lens' FloodlightActivityGroupsGet (Maybe Text)
faggUploadType
  = lens _faggUploadType
      (\ s a -> s{_faggUploadType = a})

-- | User profile ID associated with this request.
faggProFileId :: Lens' FloodlightActivityGroupsGet Int64
faggProFileId
  = lens _faggProFileId
      (\ s a -> s{_faggProFileId = a})
      . _Coerce

-- | Floodlight activity Group ID.
faggId :: Lens' FloodlightActivityGroupsGet Int64
faggId
  = lens _faggId (\ s a -> s{_faggId = a}) . _Coerce

-- | JSONP
faggCallback :: Lens' FloodlightActivityGroupsGet (Maybe Text)
faggCallback
  = lens _faggCallback (\ s a -> s{_faggCallback = a})

instance GoogleRequest FloodlightActivityGroupsGet
         where
        type Rs FloodlightActivityGroupsGet =
             FloodlightActivityGroup
        type Scopes FloodlightActivityGroupsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient FloodlightActivityGroupsGet'{..}
          = go _faggProFileId _faggId _faggXgafv
              _faggUploadProtocol
              _faggAccessToken
              _faggUploadType
              _faggCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy FloodlightActivityGroupsGetResource)
                      mempty
