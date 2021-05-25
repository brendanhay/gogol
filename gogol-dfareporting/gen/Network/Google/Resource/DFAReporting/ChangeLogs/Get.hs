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
-- Module      : Network.Google.Resource.DFAReporting.ChangeLogs.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one change log by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.changeLogs.get@.
module Network.Google.Resource.DFAReporting.ChangeLogs.Get
    (
    -- * REST Resource
      ChangeLogsGetResource

    -- * Creating a Request
    , changeLogsGet
    , ChangeLogsGet

    -- * Request Lenses
    , clgXgafv
    , clgUploadProtocol
    , clgAccessToken
    , clgUploadType
    , clgProFileId
    , clgId
    , clgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.changeLogs.get@ method which the
-- 'ChangeLogsGet' request conforms to.
type ChangeLogsGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "changeLogs" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] ChangeLog

-- | Gets one change log by ID.
--
-- /See:/ 'changeLogsGet' smart constructor.
data ChangeLogsGet =
  ChangeLogsGet'
    { _clgXgafv :: !(Maybe Xgafv)
    , _clgUploadProtocol :: !(Maybe Text)
    , _clgAccessToken :: !(Maybe Text)
    , _clgUploadType :: !(Maybe Text)
    , _clgProFileId :: !(Textual Int64)
    , _clgId :: !(Textual Int64)
    , _clgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChangeLogsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clgXgafv'
--
-- * 'clgUploadProtocol'
--
-- * 'clgAccessToken'
--
-- * 'clgUploadType'
--
-- * 'clgProFileId'
--
-- * 'clgId'
--
-- * 'clgCallback'
changeLogsGet
    :: Int64 -- ^ 'clgProFileId'
    -> Int64 -- ^ 'clgId'
    -> ChangeLogsGet
changeLogsGet pClgProFileId_ pClgId_ =
  ChangeLogsGet'
    { _clgXgafv = Nothing
    , _clgUploadProtocol = Nothing
    , _clgAccessToken = Nothing
    , _clgUploadType = Nothing
    , _clgProFileId = _Coerce # pClgProFileId_
    , _clgId = _Coerce # pClgId_
    , _clgCallback = Nothing
    }


-- | V1 error format.
clgXgafv :: Lens' ChangeLogsGet (Maybe Xgafv)
clgXgafv = lens _clgXgafv (\ s a -> s{_clgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
clgUploadProtocol :: Lens' ChangeLogsGet (Maybe Text)
clgUploadProtocol
  = lens _clgUploadProtocol
      (\ s a -> s{_clgUploadProtocol = a})

-- | OAuth access token.
clgAccessToken :: Lens' ChangeLogsGet (Maybe Text)
clgAccessToken
  = lens _clgAccessToken
      (\ s a -> s{_clgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
clgUploadType :: Lens' ChangeLogsGet (Maybe Text)
clgUploadType
  = lens _clgUploadType
      (\ s a -> s{_clgUploadType = a})

-- | User profile ID associated with this request.
clgProFileId :: Lens' ChangeLogsGet Int64
clgProFileId
  = lens _clgProFileId (\ s a -> s{_clgProFileId = a})
      . _Coerce

-- | Change log ID.
clgId :: Lens' ChangeLogsGet Int64
clgId
  = lens _clgId (\ s a -> s{_clgId = a}) . _Coerce

-- | JSONP
clgCallback :: Lens' ChangeLogsGet (Maybe Text)
clgCallback
  = lens _clgCallback (\ s a -> s{_clgCallback = a})

instance GoogleRequest ChangeLogsGet where
        type Rs ChangeLogsGet = ChangeLog
        type Scopes ChangeLogsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient ChangeLogsGet'{..}
          = go _clgProFileId _clgId _clgXgafv
              _clgUploadProtocol
              _clgAccessToken
              _clgUploadType
              _clgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy ChangeLogsGetResource)
                      mempty
