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
-- Module      : Network.Google.Resource.DFAReporting.UserRoles.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing user role.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.userRoles.delete@.
module Network.Google.Resource.DFAReporting.UserRoles.Delete
    (
    -- * REST Resource
      UserRolesDeleteResource

    -- * Creating a Request
    , userRolesDelete
    , UserRolesDelete

    -- * Request Lenses
    , urdProFileId
    , urdId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.userRoles.delete@ method which the
-- 'UserRolesDelete' request conforms to.
type UserRolesDeleteResource =
     "dfareporting" :>
       "v2.2" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "userRoles" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing user role.
--
-- /See:/ 'userRolesDelete' smart constructor.
data UserRolesDelete = UserRolesDelete
    { _urdProFileId :: !(Textual Int64)
    , _urdId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urdProFileId'
--
-- * 'urdId'
userRolesDelete
    :: Int64 -- ^ 'urdProFileId'
    -> Int64 -- ^ 'urdId'
    -> UserRolesDelete
userRolesDelete pUrdProFileId_ pUrdId_ =
    UserRolesDelete
    { _urdProFileId = _Coerce # pUrdProFileId_
    , _urdId = _Coerce # pUrdId_
    }

-- | User profile ID associated with this request.
urdProFileId :: Lens' UserRolesDelete Int64
urdProFileId
  = lens _urdProFileId (\ s a -> s{_urdProFileId = a})
      . _Coerce

-- | User role ID.
urdId :: Lens' UserRolesDelete Int64
urdId
  = lens _urdId (\ s a -> s{_urdId = a}) . _Coerce

instance GoogleRequest UserRolesDelete where
        type Rs UserRolesDelete = ()
        requestClient UserRolesDelete{..}
          = go _urdProFileId _urdId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy UserRolesDeleteResource)
                      mempty
