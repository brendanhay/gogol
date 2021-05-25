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
-- Module      : Network.Google.Resource.Analytics.UserDeletion.UserDeletionRequest.Upsert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Insert or update a user deletion requests.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.userDeletion.userDeletionRequest.upsert@.
module Network.Google.Resource.Analytics.UserDeletion.UserDeletionRequest.Upsert
    (
    -- * REST Resource
      UserDeletionUserDeletionRequestUpsertResource

    -- * Creating a Request
    , userDeletionUserDeletionRequestUpsert
    , UserDeletionUserDeletionRequestUpsert

    -- * Request Lenses
    , ududruPayload
    ) where

import Network.Google.Analytics.Types
import Network.Google.Prelude

-- | A resource alias for @analytics.userDeletion.userDeletionRequest.upsert@ method which the
-- 'UserDeletionUserDeletionRequestUpsert' request conforms to.
type UserDeletionUserDeletionRequestUpsertResource =
     "analytics" :>
       "v3" :>
         "userDeletion" :>
           "userDeletionRequests:upsert" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] UserDeletionRequest :>
                 Post '[JSON] UserDeletionRequest

-- | Insert or update a user deletion requests.
--
-- /See:/ 'userDeletionUserDeletionRequestUpsert' smart constructor.
newtype UserDeletionUserDeletionRequestUpsert =
  UserDeletionUserDeletionRequestUpsert'
    { _ududruPayload :: UserDeletionRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserDeletionUserDeletionRequestUpsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ududruPayload'
userDeletionUserDeletionRequestUpsert
    :: UserDeletionRequest -- ^ 'ududruPayload'
    -> UserDeletionUserDeletionRequestUpsert
userDeletionUserDeletionRequestUpsert pUdudruPayload_ =
  UserDeletionUserDeletionRequestUpsert' {_ududruPayload = pUdudruPayload_}


-- | Multipart request metadata.
ududruPayload :: Lens' UserDeletionUserDeletionRequestUpsert UserDeletionRequest
ududruPayload
  = lens _ududruPayload
      (\ s a -> s{_ududruPayload = a})

instance GoogleRequest
           UserDeletionUserDeletionRequestUpsert
         where
        type Rs UserDeletionUserDeletionRequestUpsert =
             UserDeletionRequest
        type Scopes UserDeletionUserDeletionRequestUpsert =
             '["https://www.googleapis.com/auth/analytics.user.deletion"]
        requestClient
          UserDeletionUserDeletionRequestUpsert'{..}
          = go (Just AltJSON) _ududruPayload analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UserDeletionUserDeletionRequestUpsertResource)
                      mempty
