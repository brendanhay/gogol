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
-- Module      : Network.Google.Resource.DFAReporting.Reports.CompatibleFields.Query
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the fields that are compatible to be selected in the respective
-- sections of a report criteria, given the fields already selected in the
-- input report and user permissions.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.reports.compatibleFields.query@.
module Network.Google.Resource.DFAReporting.Reports.CompatibleFields.Query
    (
    -- * REST Resource
      ReportsCompatibleFieldsQueryResource

    -- * Creating a Request
    , reportsCompatibleFieldsQuery
    , ReportsCompatibleFieldsQuery

    -- * Request Lenses
    , rcfqXgafv
    , rcfqUploadProtocol
    , rcfqAccessToken
    , rcfqUploadType
    , rcfqProFileId
    , rcfqPayload
    , rcfqCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.reports.compatibleFields.query@ method which the
-- 'ReportsCompatibleFieldsQuery' request conforms to.
type ReportsCompatibleFieldsQueryResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "reports" :>
               "compatiblefields" :>
                 "query" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Report :>
                                 Post '[JSON] CompatibleFields

-- | Returns the fields that are compatible to be selected in the respective
-- sections of a report criteria, given the fields already selected in the
-- input report and user permissions.
--
-- /See:/ 'reportsCompatibleFieldsQuery' smart constructor.
data ReportsCompatibleFieldsQuery =
  ReportsCompatibleFieldsQuery'
    { _rcfqXgafv :: !(Maybe Xgafv)
    , _rcfqUploadProtocol :: !(Maybe Text)
    , _rcfqAccessToken :: !(Maybe Text)
    , _rcfqUploadType :: !(Maybe Text)
    , _rcfqProFileId :: !(Textual Int64)
    , _rcfqPayload :: !Report
    , _rcfqCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportsCompatibleFieldsQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcfqXgafv'
--
-- * 'rcfqUploadProtocol'
--
-- * 'rcfqAccessToken'
--
-- * 'rcfqUploadType'
--
-- * 'rcfqProFileId'
--
-- * 'rcfqPayload'
--
-- * 'rcfqCallback'
reportsCompatibleFieldsQuery
    :: Int64 -- ^ 'rcfqProFileId'
    -> Report -- ^ 'rcfqPayload'
    -> ReportsCompatibleFieldsQuery
reportsCompatibleFieldsQuery pRcfqProFileId_ pRcfqPayload_ =
  ReportsCompatibleFieldsQuery'
    { _rcfqXgafv = Nothing
    , _rcfqUploadProtocol = Nothing
    , _rcfqAccessToken = Nothing
    , _rcfqUploadType = Nothing
    , _rcfqProFileId = _Coerce # pRcfqProFileId_
    , _rcfqPayload = pRcfqPayload_
    , _rcfqCallback = Nothing
    }


-- | V1 error format.
rcfqXgafv :: Lens' ReportsCompatibleFieldsQuery (Maybe Xgafv)
rcfqXgafv
  = lens _rcfqXgafv (\ s a -> s{_rcfqXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rcfqUploadProtocol :: Lens' ReportsCompatibleFieldsQuery (Maybe Text)
rcfqUploadProtocol
  = lens _rcfqUploadProtocol
      (\ s a -> s{_rcfqUploadProtocol = a})

-- | OAuth access token.
rcfqAccessToken :: Lens' ReportsCompatibleFieldsQuery (Maybe Text)
rcfqAccessToken
  = lens _rcfqAccessToken
      (\ s a -> s{_rcfqAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rcfqUploadType :: Lens' ReportsCompatibleFieldsQuery (Maybe Text)
rcfqUploadType
  = lens _rcfqUploadType
      (\ s a -> s{_rcfqUploadType = a})

-- | The Campaign Manager 360 user profile ID.
rcfqProFileId :: Lens' ReportsCompatibleFieldsQuery Int64
rcfqProFileId
  = lens _rcfqProFileId
      (\ s a -> s{_rcfqProFileId = a})
      . _Coerce

-- | Multipart request metadata.
rcfqPayload :: Lens' ReportsCompatibleFieldsQuery Report
rcfqPayload
  = lens _rcfqPayload (\ s a -> s{_rcfqPayload = a})

-- | JSONP
rcfqCallback :: Lens' ReportsCompatibleFieldsQuery (Maybe Text)
rcfqCallback
  = lens _rcfqCallback (\ s a -> s{_rcfqCallback = a})

instance GoogleRequest ReportsCompatibleFieldsQuery
         where
        type Rs ReportsCompatibleFieldsQuery =
             CompatibleFields
        type Scopes ReportsCompatibleFieldsQuery =
             '["https://www.googleapis.com/auth/dfareporting"]
        requestClient ReportsCompatibleFieldsQuery'{..}
          = go _rcfqProFileId _rcfqXgafv _rcfqUploadProtocol
              _rcfqAccessToken
              _rcfqUploadType
              _rcfqCallback
              (Just AltJSON)
              _rcfqPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ReportsCompatibleFieldsQueryResource)
                      mempty
