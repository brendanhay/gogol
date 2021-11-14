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
-- Module      : Network.Google.Resource.Analytics.Management.ProFiles.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profiles.delete@.
module Network.Google.Resource.Analytics.Management.ProFiles.Delete
    (
    -- * REST Resource
      ManagementProFilesDeleteResource

    -- * Creating a Request
    , managementProFilesDelete
    , ManagementProFilesDelete

    -- * Request Lenses
    , mpfdWebPropertyId
    , mpfdProFileId
    , mpfdAccountId
    ) where

import Network.Google.Analytics.Types
import Network.Google.Prelude

-- | A resource alias for @analytics.management.profiles.delete@ method which the
-- 'ManagementProFilesDelete' request conforms to.
type ManagementProFilesDeleteResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   "profiles" :>
                     Capture "profileId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a view (profile).
--
-- /See:/ 'managementProFilesDelete' smart constructor.
data ManagementProFilesDelete =
  ManagementProFilesDelete'
    { _mpfdWebPropertyId :: !Text
    , _mpfdProFileId :: !Text
    , _mpfdAccountId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagementProFilesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpfdWebPropertyId'
--
-- * 'mpfdProFileId'
--
-- * 'mpfdAccountId'
managementProFilesDelete
    :: Text -- ^ 'mpfdWebPropertyId'
    -> Text -- ^ 'mpfdProFileId'
    -> Text -- ^ 'mpfdAccountId'
    -> ManagementProFilesDelete
managementProFilesDelete pMpfdWebPropertyId_ pMpfdProFileId_ pMpfdAccountId_ =
  ManagementProFilesDelete'
    { _mpfdWebPropertyId = pMpfdWebPropertyId_
    , _mpfdProFileId = pMpfdProFileId_
    , _mpfdAccountId = pMpfdAccountId_
    }


-- | Web property ID to delete the view (profile) for.
mpfdWebPropertyId :: Lens' ManagementProFilesDelete Text
mpfdWebPropertyId
  = lens _mpfdWebPropertyId
      (\ s a -> s{_mpfdWebPropertyId = a})

-- | ID of the view (profile) to be deleted.
mpfdProFileId :: Lens' ManagementProFilesDelete Text
mpfdProFileId
  = lens _mpfdProFileId
      (\ s a -> s{_mpfdProFileId = a})

-- | Account ID to delete the view (profile) for.
mpfdAccountId :: Lens' ManagementProFilesDelete Text
mpfdAccountId
  = lens _mpfdAccountId
      (\ s a -> s{_mpfdAccountId = a})

instance GoogleRequest ManagementProFilesDelete where
        type Rs ManagementProFilesDelete = ()
        type Scopes ManagementProFilesDelete =
             '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient ManagementProFilesDelete'{..}
          = go _mpfdAccountId _mpfdWebPropertyId _mpfdProFileId
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementProFilesDeleteResource)
                      mempty
