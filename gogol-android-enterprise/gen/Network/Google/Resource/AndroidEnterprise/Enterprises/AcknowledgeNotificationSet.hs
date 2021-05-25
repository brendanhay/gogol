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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.AcknowledgeNotificationSet
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Acknowledges notifications that were received from
-- Enterprises.PullNotificationSet to prevent subsequent calls from
-- returning the same notifications.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.acknowledgeNotificationSet@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.AcknowledgeNotificationSet
    (
    -- * REST Resource
      EnterprisesAcknowledgeNotificationSetResource

    -- * Creating a Request
    , enterprisesAcknowledgeNotificationSet
    , EnterprisesAcknowledgeNotificationSet

    -- * Request Lenses
    , eansXgafv
    , eansNotificationSetId
    , eansUploadProtocol
    , eansAccessToken
    , eansUploadType
    , eansCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.acknowledgeNotificationSet@ method which the
-- 'EnterprisesAcknowledgeNotificationSet' request conforms to.
type EnterprisesAcknowledgeNotificationSetResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           "acknowledgeNotificationSet" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "notificationSetId" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Acknowledges notifications that were received from
-- Enterprises.PullNotificationSet to prevent subsequent calls from
-- returning the same notifications.
--
-- /See:/ 'enterprisesAcknowledgeNotificationSet' smart constructor.
data EnterprisesAcknowledgeNotificationSet =
  EnterprisesAcknowledgeNotificationSet'
    { _eansXgafv :: !(Maybe Xgafv)
    , _eansNotificationSetId :: !(Maybe Text)
    , _eansUploadProtocol :: !(Maybe Text)
    , _eansAccessToken :: !(Maybe Text)
    , _eansUploadType :: !(Maybe Text)
    , _eansCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesAcknowledgeNotificationSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eansXgafv'
--
-- * 'eansNotificationSetId'
--
-- * 'eansUploadProtocol'
--
-- * 'eansAccessToken'
--
-- * 'eansUploadType'
--
-- * 'eansCallback'
enterprisesAcknowledgeNotificationSet
    :: EnterprisesAcknowledgeNotificationSet
enterprisesAcknowledgeNotificationSet =
  EnterprisesAcknowledgeNotificationSet'
    { _eansXgafv = Nothing
    , _eansNotificationSetId = Nothing
    , _eansUploadProtocol = Nothing
    , _eansAccessToken = Nothing
    , _eansUploadType = Nothing
    , _eansCallback = Nothing
    }


-- | V1 error format.
eansXgafv :: Lens' EnterprisesAcknowledgeNotificationSet (Maybe Xgafv)
eansXgafv
  = lens _eansXgafv (\ s a -> s{_eansXgafv = a})

-- | The notification set ID as returned by Enterprises.PullNotificationSet.
-- This must be provided.
eansNotificationSetId :: Lens' EnterprisesAcknowledgeNotificationSet (Maybe Text)
eansNotificationSetId
  = lens _eansNotificationSetId
      (\ s a -> s{_eansNotificationSetId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eansUploadProtocol :: Lens' EnterprisesAcknowledgeNotificationSet (Maybe Text)
eansUploadProtocol
  = lens _eansUploadProtocol
      (\ s a -> s{_eansUploadProtocol = a})

-- | OAuth access token.
eansAccessToken :: Lens' EnterprisesAcknowledgeNotificationSet (Maybe Text)
eansAccessToken
  = lens _eansAccessToken
      (\ s a -> s{_eansAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eansUploadType :: Lens' EnterprisesAcknowledgeNotificationSet (Maybe Text)
eansUploadType
  = lens _eansUploadType
      (\ s a -> s{_eansUploadType = a})

-- | JSONP
eansCallback :: Lens' EnterprisesAcknowledgeNotificationSet (Maybe Text)
eansCallback
  = lens _eansCallback (\ s a -> s{_eansCallback = a})

instance GoogleRequest
           EnterprisesAcknowledgeNotificationSet
         where
        type Rs EnterprisesAcknowledgeNotificationSet = ()
        type Scopes EnterprisesAcknowledgeNotificationSet =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient
          EnterprisesAcknowledgeNotificationSet'{..}
          = go _eansXgafv _eansNotificationSetId
              _eansUploadProtocol
              _eansAccessToken
              _eansUploadType
              _eansCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy EnterprisesAcknowledgeNotificationSetResource)
                      mempty
