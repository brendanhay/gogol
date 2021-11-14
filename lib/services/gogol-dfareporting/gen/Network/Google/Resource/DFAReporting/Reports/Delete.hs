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
-- Module      : Network.Google.Resource.DFAReporting.Reports.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a report by its ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.reports.delete@.
module Network.Google.Resource.DFAReporting.Reports.Delete
    (
    -- * REST Resource
      ReportsDeleteResource

    -- * Creating a Request
    , reportsDelete
    , ReportsDelete

    -- * Request Lenses
    , rdXgafv
    , rdUploadProtocol
    , rdAccessToken
    , rdReportId
    , rdUploadType
    , rdProFileId
    , rdCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.reports.delete@ method which the
-- 'ReportsDelete' request conforms to.
type ReportsDeleteResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "reports" :>
               Capture "reportId" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a report by its ID.
--
-- /See:/ 'reportsDelete' smart constructor.
data ReportsDelete =
  ReportsDelete'
    { _rdXgafv :: !(Maybe Xgafv)
    , _rdUploadProtocol :: !(Maybe Text)
    , _rdAccessToken :: !(Maybe Text)
    , _rdReportId :: !(Textual Int64)
    , _rdUploadType :: !(Maybe Text)
    , _rdProFileId :: !(Textual Int64)
    , _rdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdXgafv'
--
-- * 'rdUploadProtocol'
--
-- * 'rdAccessToken'
--
-- * 'rdReportId'
--
-- * 'rdUploadType'
--
-- * 'rdProFileId'
--
-- * 'rdCallback'
reportsDelete
    :: Int64 -- ^ 'rdReportId'
    -> Int64 -- ^ 'rdProFileId'
    -> ReportsDelete
reportsDelete pRdReportId_ pRdProFileId_ =
  ReportsDelete'
    { _rdXgafv = Nothing
    , _rdUploadProtocol = Nothing
    , _rdAccessToken = Nothing
    , _rdReportId = _Coerce # pRdReportId_
    , _rdUploadType = Nothing
    , _rdProFileId = _Coerce # pRdProFileId_
    , _rdCallback = Nothing
    }


-- | V1 error format.
rdXgafv :: Lens' ReportsDelete (Maybe Xgafv)
rdXgafv = lens _rdXgafv (\ s a -> s{_rdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rdUploadProtocol :: Lens' ReportsDelete (Maybe Text)
rdUploadProtocol
  = lens _rdUploadProtocol
      (\ s a -> s{_rdUploadProtocol = a})

-- | OAuth access token.
rdAccessToken :: Lens' ReportsDelete (Maybe Text)
rdAccessToken
  = lens _rdAccessToken
      (\ s a -> s{_rdAccessToken = a})

-- | The ID of the report.
rdReportId :: Lens' ReportsDelete Int64
rdReportId
  = lens _rdReportId (\ s a -> s{_rdReportId = a}) .
      _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rdUploadType :: Lens' ReportsDelete (Maybe Text)
rdUploadType
  = lens _rdUploadType (\ s a -> s{_rdUploadType = a})

-- | The Campaign Manager 360 user profile ID.
rdProFileId :: Lens' ReportsDelete Int64
rdProFileId
  = lens _rdProFileId (\ s a -> s{_rdProFileId = a}) .
      _Coerce

-- | JSONP
rdCallback :: Lens' ReportsDelete (Maybe Text)
rdCallback
  = lens _rdCallback (\ s a -> s{_rdCallback = a})

instance GoogleRequest ReportsDelete where
        type Rs ReportsDelete = ()
        type Scopes ReportsDelete =
             '["https://www.googleapis.com/auth/dfareporting"]
        requestClient ReportsDelete'{..}
          = go _rdProFileId _rdReportId _rdXgafv
              _rdUploadProtocol
              _rdAccessToken
              _rdUploadType
              _rdCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy ReportsDeleteResource)
                      mempty
