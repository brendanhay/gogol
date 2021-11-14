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
-- Module      : Network.Google.Resource.AndroidEnterprise.Users.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the details of an EMM-managed user. Can be used with EMM-managed
-- users only (not Google managed users). Pass the new details in the Users
-- resource in the request body. Only the displayName field can be changed.
-- Other fields must either be unset or have the currently active value.
-- This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.users.patch@.
module Network.Google.Resource.AndroidEnterprise.Users.Patch
    (
    -- * REST Resource
      UsersPatchResource

    -- * Creating a Request
    , usersPatch
    , UsersPatch

    -- * Request Lenses
    , upEnterpriseId
    , upPayload
    , upUserId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.users.patch@ method which the
-- 'UsersPatch' request conforms to.
type UsersPatchResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] User :> Patch '[JSON] User

-- | Updates the details of an EMM-managed user. Can be used with EMM-managed
-- users only (not Google managed users). Pass the new details in the Users
-- resource in the request body. Only the displayName field can be changed.
-- Other fields must either be unset or have the currently active value.
-- This method supports patch semantics.
--
-- /See:/ 'usersPatch' smart constructor.
data UsersPatch =
  UsersPatch'
    { _upEnterpriseId :: !Text
    , _upPayload      :: !User
    , _upUserId       :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upEnterpriseId'
--
-- * 'upPayload'
--
-- * 'upUserId'
usersPatch
    :: Text -- ^ 'upEnterpriseId'
    -> User -- ^ 'upPayload'
    -> Text -- ^ 'upUserId'
    -> UsersPatch
usersPatch pUpEnterpriseId_ pUpPayload_ pUpUserId_ =
  UsersPatch'
    { _upEnterpriseId = pUpEnterpriseId_
    , _upPayload = pUpPayload_
    , _upUserId = pUpUserId_
    }


-- | The ID of the enterprise.
upEnterpriseId :: Lens' UsersPatch Text
upEnterpriseId
  = lens _upEnterpriseId
      (\ s a -> s{_upEnterpriseId = a})

-- | Multipart request metadata.
upPayload :: Lens' UsersPatch User
upPayload
  = lens _upPayload (\ s a -> s{_upPayload = a})

-- | The ID of the user.
upUserId :: Lens' UsersPatch Text
upUserId = lens _upUserId (\ s a -> s{_upUserId = a})

instance GoogleRequest UsersPatch where
        type Rs UsersPatch = User
        type Scopes UsersPatch =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient UsersPatch'{..}
          = go _upEnterpriseId _upUserId (Just AltJSON)
              _upPayload
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy UsersPatchResource)
                      mempty
