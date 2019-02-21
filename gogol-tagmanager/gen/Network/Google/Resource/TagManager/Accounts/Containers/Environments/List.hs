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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Environments.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all GTM Environments of a GTM Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.environments.list@.
module Network.Google.Resource.TagManager.Accounts.Containers.Environments.List
    (
    -- * REST Resource
      AccountsContainersEnvironmentsListResource

    -- * Creating a Request
    , accountsContainersEnvironmentsList
    , AccountsContainersEnvironmentsList

    -- * Request Lenses
    , acelParent
    , acelPageToken
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.environments.list@ method which the
-- 'AccountsContainersEnvironmentsList' request conforms to.
type AccountsContainersEnvironmentsListResource =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "environments" :>
             QueryParam "pageToken" Text :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] ListEnvironmentsResponse

-- | Lists all GTM Environments of a GTM Container.
--
-- /See:/ 'accountsContainersEnvironmentsList' smart constructor.
data AccountsContainersEnvironmentsList =
  AccountsContainersEnvironmentsList'
    { _acelParent    :: !Text
    , _acelPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersEnvironmentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acelParent'
--
-- * 'acelPageToken'
accountsContainersEnvironmentsList
    :: Text -- ^ 'acelParent'
    -> AccountsContainersEnvironmentsList
accountsContainersEnvironmentsList pAcelParent_ =
  AccountsContainersEnvironmentsList'
    {_acelParent = pAcelParent_, _acelPageToken = Nothing}


-- | GTM Container\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}
acelParent :: Lens' AccountsContainersEnvironmentsList Text
acelParent
  = lens _acelParent (\ s a -> s{_acelParent = a})

-- | Continuation token for fetching the next page of results.
acelPageToken :: Lens' AccountsContainersEnvironmentsList (Maybe Text)
acelPageToken
  = lens _acelPageToken
      (\ s a -> s{_acelPageToken = a})

instance GoogleRequest
           AccountsContainersEnvironmentsList
         where
        type Rs AccountsContainersEnvironmentsList =
             ListEnvironmentsResponse
        type Scopes AccountsContainersEnvironmentsList =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient AccountsContainersEnvironmentsList'{..}
          = go _acelParent _acelPageToken (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersEnvironmentsListResource)
                      mempty
