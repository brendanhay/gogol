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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.versions.get@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Get
    (
    -- * REST Resource
      AccountsContainersVersionsGetResource

    -- * Creating a Request
    , accountsContainersVersionsGet
    , AccountsContainersVersionsGet

    -- * Request Lenses
    , acvgPath
    , acvgContainerVersionId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.versions.get@ method which the
-- 'AccountsContainersVersionsGet' request conforms to.
type AccountsContainersVersionsGetResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "containerVersionId" Text :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] ContainerVersion

-- | Gets a Container Version.
--
-- /See:/ 'accountsContainersVersionsGet' smart constructor.
data AccountsContainersVersionsGet =
  AccountsContainersVersionsGet'
    { _acvgPath               :: !Text
    , _acvgContainerVersionId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersVersionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvgPath'
--
-- * 'acvgContainerVersionId'
accountsContainersVersionsGet
    :: Text -- ^ 'acvgPath'
    -> AccountsContainersVersionsGet
accountsContainersVersionsGet pAcvgPath_ =
  AccountsContainersVersionsGet'
    {_acvgPath = pAcvgPath_, _acvgContainerVersionId = Nothing}


-- | GTM ContainerVersion\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/versions\/{version_id}
acvgPath :: Lens' AccountsContainersVersionsGet Text
acvgPath = lens _acvgPath (\ s a -> s{_acvgPath = a})

-- | The GTM ContainerVersion ID. Specify published to retrieve the currently
-- published version.
acvgContainerVersionId :: Lens' AccountsContainersVersionsGet (Maybe Text)
acvgContainerVersionId
  = lens _acvgContainerVersionId
      (\ s a -> s{_acvgContainerVersionId = a})

instance GoogleRequest AccountsContainersVersionsGet
         where
        type Rs AccountsContainersVersionsGet =
             ContainerVersion
        type Scopes AccountsContainersVersionsGet =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.edit.containerversions",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient AccountsContainersVersionsGet'{..}
          = go _acvgPath _acvgContainerVersionId (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVersionsGetResource)
                      mempty
