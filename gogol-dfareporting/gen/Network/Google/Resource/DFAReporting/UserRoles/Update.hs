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
-- Module      : Network.Google.Resource.DFAReporting.UserRoles.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing user role.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.userRoles.update@.
module Network.Google.Resource.DFAReporting.UserRoles.Update
    (
    -- * REST Resource
      UserRolesUpdateResource

    -- * Creating a Request
    , userRolesUpdate
    , UserRolesUpdate

    -- * Request Lenses
    , uruProFileId
    , uruPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.userRoles.update@ method which the
-- 'UserRolesUpdate' request conforms to.
type UserRolesUpdateResource =
     "dfareporting" :>
       "v2.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "userRoles" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] UserRole :> Put '[JSON] UserRole

-- | Updates an existing user role.
--
-- /See:/ 'userRolesUpdate' smart constructor.
data UserRolesUpdate = UserRolesUpdate'
    { _uruProFileId :: !(Textual Int64)
    , _uruPayload   :: !UserRole
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uruProFileId'
--
-- * 'uruPayload'
userRolesUpdate
    :: Int64 -- ^ 'uruProFileId'
    -> UserRole -- ^ 'uruPayload'
    -> UserRolesUpdate
userRolesUpdate pUruProFileId_ pUruPayload_ =
    UserRolesUpdate'
    { _uruProFileId = _Coerce # pUruProFileId_
    , _uruPayload = pUruPayload_
    }

-- | User profile ID associated with this request.
uruProFileId :: Lens' UserRolesUpdate Int64
uruProFileId
  = lens _uruProFileId (\ s a -> s{_uruProFileId = a})
      . _Coerce

-- | Multipart request metadata.
uruPayload :: Lens' UserRolesUpdate UserRole
uruPayload
  = lens _uruPayload (\ s a -> s{_uruPayload = a})

instance GoogleRequest UserRolesUpdate where
        type Rs UserRolesUpdate = UserRole
        type Scopes UserRolesUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient UserRolesUpdate'{..}
          = go _uruProFileId (Just AltJSON) _uruPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy UserRolesUpdateResource)
                      mempty
