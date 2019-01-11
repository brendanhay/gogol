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
-- Module      : Network.Google.Resource.AlertCenter.Alerts.Feedback.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates new feedback for an alert.
--
-- /See:/ <https://developers.google.com/admin-sdk/alertcenter/ G Suite Alert Center API Reference> for @alertcenter.alerts.feedback.create@.
module Network.Google.Resource.AlertCenter.Alerts.Feedback.Create
    (
    -- * REST Resource
      AlertsFeedbackCreateResource

    -- * Creating a Request
    , alertsFeedbackCreate
    , AlertsFeedbackCreate

    -- * Request Lenses
    , afcXgafv
    , afcUploadProtocol
    , afcAccessToken
    , afcAlertId
    , afcUploadType
    , afcPayload
    , afcCustomerId
    , afcCallback
    ) where

import           Network.Google.AlertCenter.Types
import           Network.Google.Prelude

-- | A resource alias for @alertcenter.alerts.feedback.create@ method which the
-- 'AlertsFeedbackCreate' request conforms to.
type AlertsFeedbackCreateResource =
     "v1beta1" :>
       "alerts" :>
         Capture "alertId" Text :>
           "feedback" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "customerId" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] AlertFeedback :>
                             Post '[JSON] AlertFeedback

-- | Creates new feedback for an alert.
--
-- /See:/ 'alertsFeedbackCreate' smart constructor.
data AlertsFeedbackCreate = AlertsFeedbackCreate'
    { _afcXgafv          :: !(Maybe Xgafv)
    , _afcUploadProtocol :: !(Maybe Text)
    , _afcAccessToken    :: !(Maybe Text)
    , _afcAlertId        :: !Text
    , _afcUploadType     :: !(Maybe Text)
    , _afcPayload        :: !AlertFeedback
    , _afcCustomerId     :: !(Maybe Text)
    , _afcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AlertsFeedbackCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'afcXgafv'
--
-- * 'afcUploadProtocol'
--
-- * 'afcAccessToken'
--
-- * 'afcAlertId'
--
-- * 'afcUploadType'
--
-- * 'afcPayload'
--
-- * 'afcCustomerId'
--
-- * 'afcCallback'
alertsFeedbackCreate
    :: Text -- ^ 'afcAlertId'
    -> AlertFeedback -- ^ 'afcPayload'
    -> AlertsFeedbackCreate
alertsFeedbackCreate pAfcAlertId_ pAfcPayload_ =
    AlertsFeedbackCreate'
    { _afcXgafv = Nothing
    , _afcUploadProtocol = Nothing
    , _afcAccessToken = Nothing
    , _afcAlertId = pAfcAlertId_
    , _afcUploadType = Nothing
    , _afcPayload = pAfcPayload_
    , _afcCustomerId = Nothing
    , _afcCallback = Nothing
    }

-- | V1 error format.
afcXgafv :: Lens' AlertsFeedbackCreate (Maybe Xgafv)
afcXgafv = lens _afcXgafv (\ s a -> s{_afcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
afcUploadProtocol :: Lens' AlertsFeedbackCreate (Maybe Text)
afcUploadProtocol
  = lens _afcUploadProtocol
      (\ s a -> s{_afcUploadProtocol = a})

-- | OAuth access token.
afcAccessToken :: Lens' AlertsFeedbackCreate (Maybe Text)
afcAccessToken
  = lens _afcAccessToken
      (\ s a -> s{_afcAccessToken = a})

-- | Required. The identifier of the alert this feedback belongs to. Returns
-- a \`NOT_FOUND\` error if no such alert.
afcAlertId :: Lens' AlertsFeedbackCreate Text
afcAlertId
  = lens _afcAlertId (\ s a -> s{_afcAlertId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
afcUploadType :: Lens' AlertsFeedbackCreate (Maybe Text)
afcUploadType
  = lens _afcUploadType
      (\ s a -> s{_afcUploadType = a})

-- | Multipart request metadata.
afcPayload :: Lens' AlertsFeedbackCreate AlertFeedback
afcPayload
  = lens _afcPayload (\ s a -> s{_afcPayload = a})

-- | Optional. The unique identifier of the G Suite organization account of
-- the customer the alert is associated with. Inferred from the caller
-- identity if not provided.
afcCustomerId :: Lens' AlertsFeedbackCreate (Maybe Text)
afcCustomerId
  = lens _afcCustomerId
      (\ s a -> s{_afcCustomerId = a})

-- | JSONP
afcCallback :: Lens' AlertsFeedbackCreate (Maybe Text)
afcCallback
  = lens _afcCallback (\ s a -> s{_afcCallback = a})

instance GoogleRequest AlertsFeedbackCreate where
        type Rs AlertsFeedbackCreate = AlertFeedback
        type Scopes AlertsFeedbackCreate =
             '["https://www.googleapis.com/auth/apps.alerts"]
        requestClient AlertsFeedbackCreate'{..}
          = go _afcAlertId _afcXgafv _afcUploadProtocol
              _afcAccessToken
              _afcUploadType
              _afcCustomerId
              _afcCallback
              (Just AltJSON)
              _afcPayload
              alertCenterService
          where go
                  = buildClient
                      (Proxy :: Proxy AlertsFeedbackCreateResource)
                      mempty
