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
-- Module      : Network.Google.Resource.PlayCustomApp.Accounts.CustomApps.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create and publish a new custom app.
--
-- /See:/ <https://developers.google.com/android/work/play/custom-app-api Google Play Custom App Publishing API Reference> for @playcustomapp.accounts.customApps.create@.
module Network.Google.Resource.PlayCustomApp.Accounts.CustomApps.Create
    (
    -- * REST Resource
      AccountsCustomAppsCreateResource

    -- * Creating a Request
    , accountsCustomAppsCreate
    , AccountsCustomAppsCreate

    -- * Request Lenses
    , acacPayload
    , acacAccount
    ) where

import           Network.Google.PlayCustomApp.Types
import           Network.Google.Prelude

-- | A resource alias for @playcustomapp.accounts.customApps.create@ method which the
-- 'AccountsCustomAppsCreate' request conforms to.
type AccountsCustomAppsCreateResource =
     "playcustomapp" :>
       "v1" :>
         "accounts" :>
           Capture "account" (Textual Int64) :>
             "customApps" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] CustomApp :> Post '[JSON] CustomApp
       :<|>
       "upload" :>
         "playcustomapp" :>
           "v1" :>
             "accounts" :>
               Capture "account" (Textual Int64) :>
                 "customApps" :>
                   QueryParam "alt" AltJSON :>
                     QueryParam "uploadType" Multipart :>
                       MultipartRelated '[JSON] CustomApp :>
                         Post '[JSON] CustomApp

-- | Create and publish a new custom app.
--
-- /See:/ 'accountsCustomAppsCreate' smart constructor.
data AccountsCustomAppsCreate = AccountsCustomAppsCreate'
    { _acacPayload :: !CustomApp
    , _acacAccount :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsCustomAppsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acacPayload'
--
-- * 'acacAccount'
accountsCustomAppsCreate
    :: CustomApp -- ^ 'acacPayload'
    -> Int64 -- ^ 'acacAccount'
    -> AccountsCustomAppsCreate
accountsCustomAppsCreate pAcacPayload_ pAcacAccount_ =
    AccountsCustomAppsCreate'
    { _acacPayload = pAcacPayload_
    , _acacAccount = _Coerce # pAcacAccount_
    }

-- | Multipart request metadata.
acacPayload :: Lens' AccountsCustomAppsCreate CustomApp
acacPayload
  = lens _acacPayload (\ s a -> s{_acacPayload = a})

-- | Developer account ID.
acacAccount :: Lens' AccountsCustomAppsCreate Int64
acacAccount
  = lens _acacAccount (\ s a -> s{_acacAccount = a}) .
      _Coerce

instance GoogleRequest AccountsCustomAppsCreate where
        type Rs AccountsCustomAppsCreate = CustomApp
        type Scopes AccountsCustomAppsCreate =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient AccountsCustomAppsCreate'{..}
          = go _acacAccount (Just AltJSON) _acacPayload
              playCustomAppService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy AccountsCustomAppsCreateResource)
                      mempty

instance GoogleRequest
         (MediaUpload AccountsCustomAppsCreate) where
        type Rs (MediaUpload AccountsCustomAppsCreate) =
             CustomApp
        type Scopes (MediaUpload AccountsCustomAppsCreate) =
             Scopes AccountsCustomAppsCreate
        requestClient
          (MediaUpload AccountsCustomAppsCreate'{..} body)
          = go _acacAccount (Just AltJSON) (Just Multipart)
              _acacPayload
              body
              playCustomAppService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy AccountsCustomAppsCreateResource)
                      mempty
