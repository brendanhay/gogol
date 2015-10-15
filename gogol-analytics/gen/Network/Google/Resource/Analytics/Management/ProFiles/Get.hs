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
-- Module      : Network.Google.Resource.Analytics.Management.ProFiles.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a view (profile) to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProFilesGet@.
module Network.Google.Resource.Analytics.Management.ProFiles.Get
    (
    -- * REST Resource
      ManagementProFilesGetResource

    -- * Creating a Request
    , managementProFilesGet'
    , ManagementProFilesGet'

    -- * Request Lenses
    , mpfgWebPropertyId
    , mpfgProFileId
    , mpfgAccountId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProFilesGet@ method which the
-- 'ManagementProFilesGet'' request conforms to.
type ManagementProFilesGetResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] ProFile

-- | Gets a view (profile) to which the user has access.
--
-- /See:/ 'managementProFilesGet'' smart constructor.
data ManagementProFilesGet' = ManagementProFilesGet'
    { _mpfgWebPropertyId :: !Text
    , _mpfgProFileId     :: !Text
    , _mpfgAccountId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFilesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpfgWebPropertyId'
--
-- * 'mpfgProFileId'
--
-- * 'mpfgAccountId'
managementProFilesGet'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementProFilesGet'
managementProFilesGet' pMpfgWebPropertyId_ pMpfgProFileId_ pMpfgAccountId_ =
    ManagementProFilesGet'
    { _mpfgWebPropertyId = pMpfgWebPropertyId_
    , _mpfgProFileId = pMpfgProFileId_
    , _mpfgAccountId = pMpfgAccountId_
    }

-- | Web property ID to retrieve the goal for.
mpfgWebPropertyId :: Lens' ManagementProFilesGet' Text
mpfgWebPropertyId
  = lens _mpfgWebPropertyId
      (\ s a -> s{_mpfgWebPropertyId = a})

-- | View (Profile) ID to retrieve the goal for.
mpfgProFileId :: Lens' ManagementProFilesGet' Text
mpfgProFileId
  = lens _mpfgProFileId
      (\ s a -> s{_mpfgProFileId = a})

-- | Account ID to retrieve the goal for.
mpfgAccountId :: Lens' ManagementProFilesGet' Text
mpfgAccountId
  = lens _mpfgAccountId
      (\ s a -> s{_mpfgAccountId = a})

instance GoogleRequest ManagementProFilesGet' where
        type Rs ManagementProFilesGet' = ProFile
        requestClient ManagementProFilesGet'{..}
          = go _mpfgAccountId _mpfgWebPropertyId _mpfgProFileId
              (Just AltJSON)
              analytics
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementProFilesGetResource)
                      mempty
