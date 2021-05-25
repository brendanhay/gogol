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
-- Module      : Network.Google.Resource.AlertCenter.Alerts.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the alerts.
--
-- /See:/ <https://developers.google.com/admin-sdk/alertcenter/ Google Workspace Alert Center API Reference> for @alertcenter.alerts.list@.
module Network.Google.Resource.AlertCenter.Alerts.List
    (
    -- * REST Resource
      AlertsListResource

    -- * Creating a Request
    , alertsList
    , AlertsList

    -- * Request Lenses
    , alXgafv
    , alUploadProtocol
    , alOrderBy
    , alAccessToken
    , alUploadType
    , alCustomerId
    , alFilter
    , alPageToken
    , alPageSize
    , alCallback
    ) where

import Network.Google.AlertCenter.Types
import Network.Google.Prelude

-- | A resource alias for @alertcenter.alerts.list@ method which the
-- 'AlertsList' request conforms to.
type AlertsListResource =
     "v1beta1" :>
       "alerts" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "orderBy" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "customerId" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListAlertsResponse

-- | Lists the alerts.
--
-- /See:/ 'alertsList' smart constructor.
data AlertsList =
  AlertsList'
    { _alXgafv :: !(Maybe Xgafv)
    , _alUploadProtocol :: !(Maybe Text)
    , _alOrderBy :: !(Maybe Text)
    , _alAccessToken :: !(Maybe Text)
    , _alUploadType :: !(Maybe Text)
    , _alCustomerId :: !(Maybe Text)
    , _alFilter :: !(Maybe Text)
    , _alPageToken :: !(Maybe Text)
    , _alPageSize :: !(Maybe (Textual Int32))
    , _alCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AlertsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alXgafv'
--
-- * 'alUploadProtocol'
--
-- * 'alOrderBy'
--
-- * 'alAccessToken'
--
-- * 'alUploadType'
--
-- * 'alCustomerId'
--
-- * 'alFilter'
--
-- * 'alPageToken'
--
-- * 'alPageSize'
--
-- * 'alCallback'
alertsList
    :: AlertsList
alertsList =
  AlertsList'
    { _alXgafv = Nothing
    , _alUploadProtocol = Nothing
    , _alOrderBy = Nothing
    , _alAccessToken = Nothing
    , _alUploadType = Nothing
    , _alCustomerId = Nothing
    , _alFilter = Nothing
    , _alPageToken = Nothing
    , _alPageSize = Nothing
    , _alCallback = Nothing
    }


-- | V1 error format.
alXgafv :: Lens' AlertsList (Maybe Xgafv)
alXgafv = lens _alXgafv (\ s a -> s{_alXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
alUploadProtocol :: Lens' AlertsList (Maybe Text)
alUploadProtocol
  = lens _alUploadProtocol
      (\ s a -> s{_alUploadProtocol = a})

-- | Optional. The sort order of the list results. If not specified results
-- may be returned in arbitrary order. You can sort the results in
-- descending order based on the creation timestamp using
-- \`order_by=\"create_time desc\"\`. Currently, supported sorting are
-- \`create_time asc\`, \`create_time desc\`, \`update_time desc\`
alOrderBy :: Lens' AlertsList (Maybe Text)
alOrderBy
  = lens _alOrderBy (\ s a -> s{_alOrderBy = a})

-- | OAuth access token.
alAccessToken :: Lens' AlertsList (Maybe Text)
alAccessToken
  = lens _alAccessToken
      (\ s a -> s{_alAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
alUploadType :: Lens' AlertsList (Maybe Text)
alUploadType
  = lens _alUploadType (\ s a -> s{_alUploadType = a})

-- | Optional. The unique identifier of the Google Workspace organization
-- account of the customer the alerts are associated with. Inferred from
-- the caller identity if not provided.
alCustomerId :: Lens' AlertsList (Maybe Text)
alCustomerId
  = lens _alCustomerId (\ s a -> s{_alCustomerId = a})

-- | Optional. A query string for filtering alert results. For more details,
-- see [Query
-- filters](https:\/\/developers.google.com\/admin-sdk\/alertcenter\/guides\/query-filters)
-- and [Supported query filter
-- fields](https:\/\/developers.google.com\/admin-sdk\/alertcenter\/reference\/filter-fields#alerts.list).
alFilter :: Lens' AlertsList (Maybe Text)
alFilter = lens _alFilter (\ s a -> s{_alFilter = a})

-- | Optional. A token identifying a page of results the server should
-- return. If empty, a new iteration is started. To continue an iteration,
-- pass in the value from the previous ListAlertsResponse\'s
-- next_page_token field.
alPageToken :: Lens' AlertsList (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | Optional. The requested page size. Server may return fewer items than
-- requested. If unspecified, server picks an appropriate default.
alPageSize :: Lens' AlertsList (Maybe Int32)
alPageSize
  = lens _alPageSize (\ s a -> s{_alPageSize = a}) .
      mapping _Coerce

-- | JSONP
alCallback :: Lens' AlertsList (Maybe Text)
alCallback
  = lens _alCallback (\ s a -> s{_alCallback = a})

instance GoogleRequest AlertsList where
        type Rs AlertsList = ListAlertsResponse
        type Scopes AlertsList =
             '["https://www.googleapis.com/auth/apps.alerts"]
        requestClient AlertsList'{..}
          = go _alXgafv _alUploadProtocol _alOrderBy
              _alAccessToken
              _alUploadType
              _alCustomerId
              _alFilter
              _alPageToken
              _alPageSize
              _alCallback
              (Just AltJSON)
              alertCenterService
          where go
                  = buildClient (Proxy :: Proxy AlertsListResource)
                      mempty
