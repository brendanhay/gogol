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
-- Module      : Network.Google.Resource.DFAReporting.CreativeGroups.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one creative group by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creativeGroups.get@.
module Network.Google.Resource.DFAReporting.CreativeGroups.Get
    (
    -- * REST Resource
      CreativeGroupsGetResource

    -- * Creating a Request
    , creativeGroupsGet
    , CreativeGroupsGet

    -- * Request Lenses
    , cgggXgafv
    , cgggUploadProtocol
    , cgggAccessToken
    , cgggUploadType
    , cgggProFileId
    , cgggId
    , cgggCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeGroups.get@ method which the
-- 'CreativeGroupsGet' request conforms to.
type CreativeGroupsGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creativeGroups" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] CreativeGroup

-- | Gets one creative group by ID.
--
-- /See:/ 'creativeGroupsGet' smart constructor.
data CreativeGroupsGet =
  CreativeGroupsGet'
    { _cgggXgafv :: !(Maybe Xgafv)
    , _cgggUploadProtocol :: !(Maybe Text)
    , _cgggAccessToken :: !(Maybe Text)
    , _cgggUploadType :: !(Maybe Text)
    , _cgggProFileId :: !(Textual Int64)
    , _cgggId :: !(Textual Int64)
    , _cgggCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreativeGroupsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgggXgafv'
--
-- * 'cgggUploadProtocol'
--
-- * 'cgggAccessToken'
--
-- * 'cgggUploadType'
--
-- * 'cgggProFileId'
--
-- * 'cgggId'
--
-- * 'cgggCallback'
creativeGroupsGet
    :: Int64 -- ^ 'cgggProFileId'
    -> Int64 -- ^ 'cgggId'
    -> CreativeGroupsGet
creativeGroupsGet pCgggProFileId_ pCgggId_ =
  CreativeGroupsGet'
    { _cgggXgafv = Nothing
    , _cgggUploadProtocol = Nothing
    , _cgggAccessToken = Nothing
    , _cgggUploadType = Nothing
    , _cgggProFileId = _Coerce # pCgggProFileId_
    , _cgggId = _Coerce # pCgggId_
    , _cgggCallback = Nothing
    }


-- | V1 error format.
cgggXgafv :: Lens' CreativeGroupsGet (Maybe Xgafv)
cgggXgafv
  = lens _cgggXgafv (\ s a -> s{_cgggXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cgggUploadProtocol :: Lens' CreativeGroupsGet (Maybe Text)
cgggUploadProtocol
  = lens _cgggUploadProtocol
      (\ s a -> s{_cgggUploadProtocol = a})

-- | OAuth access token.
cgggAccessToken :: Lens' CreativeGroupsGet (Maybe Text)
cgggAccessToken
  = lens _cgggAccessToken
      (\ s a -> s{_cgggAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cgggUploadType :: Lens' CreativeGroupsGet (Maybe Text)
cgggUploadType
  = lens _cgggUploadType
      (\ s a -> s{_cgggUploadType = a})

-- | User profile ID associated with this request.
cgggProFileId :: Lens' CreativeGroupsGet Int64
cgggProFileId
  = lens _cgggProFileId
      (\ s a -> s{_cgggProFileId = a})
      . _Coerce

-- | Creative group ID.
cgggId :: Lens' CreativeGroupsGet Int64
cgggId
  = lens _cgggId (\ s a -> s{_cgggId = a}) . _Coerce

-- | JSONP
cgggCallback :: Lens' CreativeGroupsGet (Maybe Text)
cgggCallback
  = lens _cgggCallback (\ s a -> s{_cgggCallback = a})

instance GoogleRequest CreativeGroupsGet where
        type Rs CreativeGroupsGet = CreativeGroup
        type Scopes CreativeGroupsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CreativeGroupsGet'{..}
          = go _cgggProFileId _cgggId _cgggXgafv
              _cgggUploadProtocol
              _cgggAccessToken
              _cgggUploadType
              _cgggCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeGroupsGetResource)
                      mempty
