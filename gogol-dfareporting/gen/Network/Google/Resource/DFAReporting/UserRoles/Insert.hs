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
-- Module      : Network.Google.Resource.DFAReporting.UserRoles.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new user role.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.userRoles.insert@.
module Network.Google.Resource.DFAReporting.UserRoles.Insert
    (
    -- * REST Resource
      UserRolesInsertResource

    -- * Creating a Request
    , userRolesInsert
    , UserRolesInsert

    -- * Request Lenses
    , uriProFileId
    , uriPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.userRoles.insert@ method which the
-- 'UserRolesInsert' request conforms to.
type UserRolesInsertResource =
     "dfareporting" :>
       "v2.7" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "userRoles" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] UserRole :> Post '[JSON] UserRole

-- | Inserts a new user role.
--
-- /See:/ 'userRolesInsert' smart constructor.
data UserRolesInsert = UserRolesInsert'
    { _uriProFileId :: !(Textual Int64)
    , _uriPayload   :: !UserRole
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uriProFileId'
--
-- * 'uriPayload'
userRolesInsert
    :: Int64 -- ^ 'uriProFileId'
    -> UserRole -- ^ 'uriPayload'
    -> UserRolesInsert
userRolesInsert pUriProFileId_ pUriPayload_ =
    UserRolesInsert'
    { _uriProFileId = _Coerce # pUriProFileId_
    , _uriPayload = pUriPayload_
    }

-- | User profile ID associated with this request.
uriProFileId :: Lens' UserRolesInsert Int64
uriProFileId
  = lens _uriProFileId (\ s a -> s{_uriProFileId = a})
      . _Coerce

-- | Multipart request metadata.
uriPayload :: Lens' UserRolesInsert UserRole
uriPayload
  = lens _uriPayload (\ s a -> s{_uriPayload = a})

instance GoogleRequest UserRolesInsert where
        type Rs UserRolesInsert = UserRole
        type Scopes UserRolesInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient UserRolesInsert'{..}
          = go _uriProFileId (Just AltJSON) _uriPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy UserRolesInsertResource)
                      mempty
