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
-- Module      : Network.Google.Resource.AlertCenter.Alerts.Feedback.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the feedback for an alert. Attempting to list feedbacks for a
-- non-existent alert returns \`NOT_FOUND\` error.
--
-- /See:/ <https://developers.google.com/admin-sdk/alertcenter/ G Suite Alert Center API Reference> for @alertcenter.alerts.feedback.list@.
module Network.Google.Resource.AlertCenter.Alerts.Feedback.List
    (
    -- * REST Resource
      AlertsFeedbackListResource

    -- * Creating a Request
    , alertsFeedbackList
    , AlertsFeedbackList

    -- * Request Lenses
    , aflXgafv
    , aflUploadProtocol
    , aflAccessToken
    , aflAlertId
    , aflUploadType
    , aflCustomerId
    , aflFilter
    , aflCallback
    ) where

import           Network.Google.AlertCenter.Types
import           Network.Google.Prelude

-- | A resource alias for @alertcenter.alerts.feedback.list@ method which the
-- 'AlertsFeedbackList' request conforms to.
type AlertsFeedbackListResource =
     "v1beta1" :>
       "alerts" :>
         Capture "alertId" Text :>
           "feedback" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "customerId" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListAlertFeedbackResponse

-- | Lists all the feedback for an alert. Attempting to list feedbacks for a
-- non-existent alert returns \`NOT_FOUND\` error.
--
-- /See:/ 'alertsFeedbackList' smart constructor.
data AlertsFeedbackList =
  AlertsFeedbackList'
    { _aflXgafv          :: !(Maybe Xgafv)
    , _aflUploadProtocol :: !(Maybe Text)
    , _aflAccessToken    :: !(Maybe Text)
    , _aflAlertId        :: !Text
    , _aflUploadType     :: !(Maybe Text)
    , _aflCustomerId     :: !(Maybe Text)
    , _aflFilter         :: !(Maybe Text)
    , _aflCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AlertsFeedbackList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aflXgafv'
--
-- * 'aflUploadProtocol'
--
-- * 'aflAccessToken'
--
-- * 'aflAlertId'
--
-- * 'aflUploadType'
--
-- * 'aflCustomerId'
--
-- * 'aflFilter'
--
-- * 'aflCallback'
alertsFeedbackList
    :: Text -- ^ 'aflAlertId'
    -> AlertsFeedbackList
alertsFeedbackList pAflAlertId_ =
  AlertsFeedbackList'
    { _aflXgafv = Nothing
    , _aflUploadProtocol = Nothing
    , _aflAccessToken = Nothing
    , _aflAlertId = pAflAlertId_
    , _aflUploadType = Nothing
    , _aflCustomerId = Nothing
    , _aflFilter = Nothing
    , _aflCallback = Nothing
    }


-- | V1 error format.
aflXgafv :: Lens' AlertsFeedbackList (Maybe Xgafv)
aflXgafv = lens _aflXgafv (\ s a -> s{_aflXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aflUploadProtocol :: Lens' AlertsFeedbackList (Maybe Text)
aflUploadProtocol
  = lens _aflUploadProtocol
      (\ s a -> s{_aflUploadProtocol = a})

-- | OAuth access token.
aflAccessToken :: Lens' AlertsFeedbackList (Maybe Text)
aflAccessToken
  = lens _aflAccessToken
      (\ s a -> s{_aflAccessToken = a})

-- | Required. The alert identifier. The \"-\" wildcard could be used to
-- represent all alerts.
aflAlertId :: Lens' AlertsFeedbackList Text
aflAlertId
  = lens _aflAlertId (\ s a -> s{_aflAlertId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aflUploadType :: Lens' AlertsFeedbackList (Maybe Text)
aflUploadType
  = lens _aflUploadType
      (\ s a -> s{_aflUploadType = a})

-- | Optional. The unique identifier of the G Suite organization account of
-- the customer the alert feedback are associated with. Inferred from the
-- caller identity if not provided.
aflCustomerId :: Lens' AlertsFeedbackList (Maybe Text)
aflCustomerId
  = lens _aflCustomerId
      (\ s a -> s{_aflCustomerId = a})

-- | Optional. A query string for filtering alert feedback results. For more
-- details, see [Query
-- filters](\/admin-sdk\/alertcenter\/guides\/query-filters) and [Supported
-- query filter
-- fields](\/admin-sdk\/alertcenter\/reference\/filter-fields#alerts.feedback.list).
aflFilter :: Lens' AlertsFeedbackList (Maybe Text)
aflFilter
  = lens _aflFilter (\ s a -> s{_aflFilter = a})

-- | JSONP
aflCallback :: Lens' AlertsFeedbackList (Maybe Text)
aflCallback
  = lens _aflCallback (\ s a -> s{_aflCallback = a})

instance GoogleRequest AlertsFeedbackList where
        type Rs AlertsFeedbackList =
             ListAlertFeedbackResponse
        type Scopes AlertsFeedbackList =
             '["https://www.googleapis.com/auth/apps.alerts"]
        requestClient AlertsFeedbackList'{..}
          = go _aflAlertId _aflXgafv _aflUploadProtocol
              _aflAccessToken
              _aflUploadType
              _aflCustomerId
              _aflFilter
              _aflCallback
              (Just AltJSON)
              alertCenterService
          where go
                  = buildClient
                      (Proxy :: Proxy AlertsFeedbackListResource)
                      mempty
