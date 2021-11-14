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
-- Module      : Network.Google.Resource.DFAReporting.Reports.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a report.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.reports.insert@.
module Network.Google.Resource.DFAReporting.Reports.Insert
    (
    -- * REST Resource
      ReportsInsertResource

    -- * Creating a Request
    , reportsInsert
    , ReportsInsert

    -- * Request Lenses
    , riXgafv
    , riUploadProtocol
    , riAccessToken
    , riUploadType
    , riProFileId
    , riPayload
    , riCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.reports.insert@ method which the
-- 'ReportsInsert' request conforms to.
type ReportsInsertResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "reports" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Report :> Post '[JSON] Report

-- | Creates a report.
--
-- /See:/ 'reportsInsert' smart constructor.
data ReportsInsert =
  ReportsInsert'
    { _riXgafv :: !(Maybe Xgafv)
    , _riUploadProtocol :: !(Maybe Text)
    , _riAccessToken :: !(Maybe Text)
    , _riUploadType :: !(Maybe Text)
    , _riProFileId :: !(Textual Int64)
    , _riPayload :: !Report
    , _riCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riXgafv'
--
-- * 'riUploadProtocol'
--
-- * 'riAccessToken'
--
-- * 'riUploadType'
--
-- * 'riProFileId'
--
-- * 'riPayload'
--
-- * 'riCallback'
reportsInsert
    :: Int64 -- ^ 'riProFileId'
    -> Report -- ^ 'riPayload'
    -> ReportsInsert
reportsInsert pRiProFileId_ pRiPayload_ =
  ReportsInsert'
    { _riXgafv = Nothing
    , _riUploadProtocol = Nothing
    , _riAccessToken = Nothing
    , _riUploadType = Nothing
    , _riProFileId = _Coerce # pRiProFileId_
    , _riPayload = pRiPayload_
    , _riCallback = Nothing
    }


-- | V1 error format.
riXgafv :: Lens' ReportsInsert (Maybe Xgafv)
riXgafv = lens _riXgafv (\ s a -> s{_riXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
riUploadProtocol :: Lens' ReportsInsert (Maybe Text)
riUploadProtocol
  = lens _riUploadProtocol
      (\ s a -> s{_riUploadProtocol = a})

-- | OAuth access token.
riAccessToken :: Lens' ReportsInsert (Maybe Text)
riAccessToken
  = lens _riAccessToken
      (\ s a -> s{_riAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
riUploadType :: Lens' ReportsInsert (Maybe Text)
riUploadType
  = lens _riUploadType (\ s a -> s{_riUploadType = a})

-- | The Campaign Manager 360 user profile ID.
riProFileId :: Lens' ReportsInsert Int64
riProFileId
  = lens _riProFileId (\ s a -> s{_riProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
riPayload :: Lens' ReportsInsert Report
riPayload
  = lens _riPayload (\ s a -> s{_riPayload = a})

-- | JSONP
riCallback :: Lens' ReportsInsert (Maybe Text)
riCallback
  = lens _riCallback (\ s a -> s{_riCallback = a})

instance GoogleRequest ReportsInsert where
        type Rs ReportsInsert = Report
        type Scopes ReportsInsert =
             '["https://www.googleapis.com/auth/dfareporting"]
        requestClient ReportsInsert'{..}
          = go _riProFileId _riXgafv _riUploadProtocol
              _riAccessToken
              _riUploadType
              _riCallback
              (Just AltJSON)
              _riPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy ReportsInsertResource)
                      mempty
