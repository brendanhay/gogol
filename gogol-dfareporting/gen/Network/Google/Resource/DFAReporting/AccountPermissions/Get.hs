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
-- Module      : Network.Google.Resource.DFAReporting.AccountPermissions.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one account permission by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.accountPermissions.get@.
module Network.Google.Resource.DFAReporting.AccountPermissions.Get
    (
    -- * REST Resource
      AccountPermissionsGetResource

    -- * Creating a Request
    , accountPermissionsGet
    , AccountPermissionsGet

    -- * Request Lenses
    , apgProFileId
    , apgId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.accountPermissions.get@ method which the
-- 'AccountPermissionsGet' request conforms to.
type AccountPermissionsGetResource =
     "dfareporting" :>
       "v2.5beta1" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "accountPermissions" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] AccountPermission

-- | Gets one account permission by ID.
--
-- /See:/ 'accountPermissionsGet' smart constructor.
data AccountPermissionsGet = AccountPermissionsGet'
    { _apgProFileId :: !(Textual Int64)
    , _apgId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountPermissionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apgProFileId'
--
-- * 'apgId'
accountPermissionsGet
    :: Int64 -- ^ 'apgProFileId'
    -> Int64 -- ^ 'apgId'
    -> AccountPermissionsGet
accountPermissionsGet pApgProFileId_ pApgId_ =
    AccountPermissionsGet'
    { _apgProFileId = _Coerce # pApgProFileId_
    , _apgId = _Coerce # pApgId_
    }

-- | User profile ID associated with this request.
apgProFileId :: Lens' AccountPermissionsGet Int64
apgProFileId
  = lens _apgProFileId (\ s a -> s{_apgProFileId = a})
      . _Coerce

-- | Account permission ID.
apgId :: Lens' AccountPermissionsGet Int64
apgId
  = lens _apgId (\ s a -> s{_apgId = a}) . _Coerce

instance GoogleRequest AccountPermissionsGet where
        type Rs AccountPermissionsGet = AccountPermission
        type Scopes AccountPermissionsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AccountPermissionsGet'{..}
          = go _apgProFileId _apgId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountPermissionsGetResource)
                      mempty
