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
-- Module      : Network.Google.Resource.AndroidEnterprise.Users.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deleted an EMM-managed user.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.users.delete@.
module Network.Google.Resource.AndroidEnterprise.Users.Delete
    (
    -- * REST Resource
      UsersDeleteResource

    -- * Creating a Request
    , usersDelete
    , UsersDelete

    -- * Request Lenses
    , udEnterpriseId
    , udUserId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.users.delete@ method which the
-- 'UsersDelete' request conforms to.
type UsersDeleteResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deleted an EMM-managed user.
--
-- /See:/ 'usersDelete' smart constructor.
data UsersDelete = UsersDelete'
    { _udEnterpriseId :: !Text
    , _udUserId       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udEnterpriseId'
--
-- * 'udUserId'
usersDelete
    :: Text -- ^ 'udEnterpriseId'
    -> Text -- ^ 'udUserId'
    -> UsersDelete
usersDelete pUdEnterpriseId_ pUdUserId_ =
    UsersDelete'
    { _udEnterpriseId = pUdEnterpriseId_
    , _udUserId = pUdUserId_
    }

-- | The ID of the enterprise.
udEnterpriseId :: Lens' UsersDelete Text
udEnterpriseId
  = lens _udEnterpriseId
      (\ s a -> s{_udEnterpriseId = a})

-- | The ID of the user.
udUserId :: Lens' UsersDelete Text
udUserId = lens _udUserId (\ s a -> s{_udUserId = a})

instance GoogleRequest UsersDelete where
        type Rs UsersDelete = ()
        type Scopes UsersDelete =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient UsersDelete'{..}
          = go _udEnterpriseId _udUserId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy UsersDeleteResource)
                      mempty
