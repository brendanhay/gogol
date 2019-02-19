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
    , eansNotificationSetId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.acknowledgeNotificationSet@ method which the
-- 'EnterprisesAcknowledgeNotificationSet' request conforms to.
type EnterprisesAcknowledgeNotificationSetResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           "acknowledgeNotificationSet" :>
             QueryParam "notificationSetId" Text :>
               QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Acknowledges notifications that were received from
-- Enterprises.PullNotificationSet to prevent subsequent calls from
-- returning the same notifications.
--
-- /See:/ 'enterprisesAcknowledgeNotificationSet' smart constructor.
newtype EnterprisesAcknowledgeNotificationSet =
  EnterprisesAcknowledgeNotificationSet'
    { _eansNotificationSetId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesAcknowledgeNotificationSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eansNotificationSetId'
enterprisesAcknowledgeNotificationSet
    :: EnterprisesAcknowledgeNotificationSet
enterprisesAcknowledgeNotificationSet =
  EnterprisesAcknowledgeNotificationSet' {_eansNotificationSetId = Nothing}


-- | The notification set ID as returned by Enterprises.PullNotificationSet.
-- This must be provided.
eansNotificationSetId :: Lens' EnterprisesAcknowledgeNotificationSet (Maybe Text)
eansNotificationSetId
  = lens _eansNotificationSetId
      (\ s a -> s{_eansNotificationSetId = a})

instance GoogleRequest
           EnterprisesAcknowledgeNotificationSet
         where
        type Rs EnterprisesAcknowledgeNotificationSet = ()
        type Scopes EnterprisesAcknowledgeNotificationSet =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient
          EnterprisesAcknowledgeNotificationSet'{..}
          = go _eansNotificationSetId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy EnterprisesAcknowledgeNotificationSetResource)
                      mempty
