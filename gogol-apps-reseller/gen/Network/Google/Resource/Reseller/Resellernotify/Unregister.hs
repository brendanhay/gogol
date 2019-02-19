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
-- Module      : Network.Google.Resource.Reseller.Resellernotify.Unregister
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Unregisters a Reseller for receiving notifications.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @reseller.resellernotify.unregister@.
module Network.Google.Resource.Reseller.Resellernotify.Unregister
    (
    -- * REST Resource
      ResellernotifyUnregisterResource

    -- * Creating a Request
    , resellernotifyUnregister
    , ResellernotifyUnregister

    -- * Request Lenses
    , ruServiceAccountEmailAddress
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @reseller.resellernotify.unregister@ method which the
-- 'ResellernotifyUnregister' request conforms to.
type ResellernotifyUnregisterResource =
     "apps" :>
       "reseller" :>
         "v1" :>
           "resellernotify" :>
             "unregister" :>
               QueryParam "serviceAccountEmailAddress" Text :>
                 QueryParam "alt" AltJSON :>
                   Post '[JSON] ResellernotifyResource

-- | Unregisters a Reseller for receiving notifications.
--
-- /See:/ 'resellernotifyUnregister' smart constructor.
newtype ResellernotifyUnregister =
  ResellernotifyUnregister'
    { _ruServiceAccountEmailAddress :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResellernotifyUnregister' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruServiceAccountEmailAddress'
resellernotifyUnregister
    :: ResellernotifyUnregister
resellernotifyUnregister =
  ResellernotifyUnregister' {_ruServiceAccountEmailAddress = Nothing}

-- | The service account which owns the Cloud-PubSub topic.
ruServiceAccountEmailAddress :: Lens' ResellernotifyUnregister (Maybe Text)
ruServiceAccountEmailAddress
  = lens _ruServiceAccountEmailAddress
      (\ s a -> s{_ruServiceAccountEmailAddress = a})

instance GoogleRequest ResellernotifyUnregister where
        type Rs ResellernotifyUnregister =
             ResellernotifyResource
        type Scopes ResellernotifyUnregister =
             '["https://www.googleapis.com/auth/apps.order"]
        requestClient ResellernotifyUnregister'{..}
          = go _ruServiceAccountEmailAddress (Just AltJSON)
              appsResellerService
          where go
                  = buildClient
                      (Proxy :: Proxy ResellernotifyUnregisterResource)
                      mempty
