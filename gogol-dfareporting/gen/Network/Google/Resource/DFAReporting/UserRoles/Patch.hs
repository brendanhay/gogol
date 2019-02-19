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
-- Module      : Network.Google.Resource.DFAReporting.UserRoles.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing user role. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.userRoles.patch@.
module Network.Google.Resource.DFAReporting.UserRoles.Patch
    (
    -- * REST Resource
      UserRolesPatchResource

    -- * Creating a Request
    , userRolesPatch
    , UserRolesPatch

    -- * Request Lenses
    , urpProFileId
    , urpPayload
    , urpId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.userRoles.patch@ method which the
-- 'UserRolesPatch' request conforms to.
type UserRolesPatchResource =
     "dfareporting" :>
       "v3.3" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "userRoles" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] UserRole :> Patch '[JSON] UserRole

-- | Updates an existing user role. This method supports patch semantics.
--
-- /See:/ 'userRolesPatch' smart constructor.
data UserRolesPatch =
  UserRolesPatch'
    { _urpProFileId :: !(Textual Int64)
    , _urpPayload   :: !UserRole
    , _urpId        :: !(Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UserRolesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urpProFileId'
--
-- * 'urpPayload'
--
-- * 'urpId'
userRolesPatch
    :: Int64 -- ^ 'urpProFileId'
    -> UserRole -- ^ 'urpPayload'
    -> Int64 -- ^ 'urpId'
    -> UserRolesPatch
userRolesPatch pUrpProFileId_ pUrpPayload_ pUrpId_ =
  UserRolesPatch'
    { _urpProFileId = _Coerce # pUrpProFileId_
    , _urpPayload = pUrpPayload_
    , _urpId = _Coerce # pUrpId_
    }

-- | User profile ID associated with this request.
urpProFileId :: Lens' UserRolesPatch Int64
urpProFileId
  = lens _urpProFileId (\ s a -> s{_urpProFileId = a})
      . _Coerce

-- | Multipart request metadata.
urpPayload :: Lens' UserRolesPatch UserRole
urpPayload
  = lens _urpPayload (\ s a -> s{_urpPayload = a})

-- | User role ID.
urpId :: Lens' UserRolesPatch Int64
urpId
  = lens _urpId (\ s a -> s{_urpId = a}) . _Coerce

instance GoogleRequest UserRolesPatch where
        type Rs UserRolesPatch = UserRole
        type Scopes UserRolesPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient UserRolesPatch'{..}
          = go _urpProFileId (Just _urpId) (Just AltJSON)
              _urpPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy UserRolesPatchResource)
                      mempty
