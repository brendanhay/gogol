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
-- Module      : Network.Google.Resource.Analytics.Management.ProFiles.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profiles.insert@.
module Network.Google.Resource.Analytics.Management.ProFiles.Insert
    (
    -- * REST Resource
      ManagementProFilesInsertResource

    -- * Creating a Request
    , managementProFilesInsert
    , ManagementProFilesInsert

    -- * Request Lenses
    , mpfiWebPropertyId
    , mpfiPayload
    , mpfiAccountId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.profiles.insert@ method which the
-- 'ManagementProFilesInsert' request conforms to.
type ManagementProFilesInsertResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   "profiles" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ProFile :> Post '[JSON] ProFile

-- | Create a new view (profile).
--
-- /See:/ 'managementProFilesInsert' smart constructor.
data ManagementProFilesInsert = ManagementProFilesInsert
    { _mpfiWebPropertyId :: !Text
    , _mpfiPayload       :: !ProFile
    , _mpfiAccountId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFilesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpfiWebPropertyId'
--
-- * 'mpfiPayload'
--
-- * 'mpfiAccountId'
managementProFilesInsert
    :: Text -- ^ 'mpfiWebPropertyId'
    -> ProFile -- ^ 'mpfiPayload'
    -> Text -- ^ 'mpfiAccountId'
    -> ManagementProFilesInsert
managementProFilesInsert pMpfiWebPropertyId_ pMpfiPayload_ pMpfiAccountId_ =
    ManagementProFilesInsert
    { _mpfiWebPropertyId = pMpfiWebPropertyId_
    , _mpfiPayload = pMpfiPayload_
    , _mpfiAccountId = pMpfiAccountId_
    }

-- | Web property ID to create the view (profile) for.
mpfiWebPropertyId :: Lens' ManagementProFilesInsert Text
mpfiWebPropertyId
  = lens _mpfiWebPropertyId
      (\ s a -> s{_mpfiWebPropertyId = a})

-- | Multipart request metadata.
mpfiPayload :: Lens' ManagementProFilesInsert ProFile
mpfiPayload
  = lens _mpfiPayload (\ s a -> s{_mpfiPayload = a})

-- | Account ID to create the view (profile) for.
mpfiAccountId :: Lens' ManagementProFilesInsert Text
mpfiAccountId
  = lens _mpfiAccountId
      (\ s a -> s{_mpfiAccountId = a})

instance GoogleRequest ManagementProFilesInsert where
        type Rs ManagementProFilesInsert = ProFile
        type Scopes ManagementProFilesInsert =
             '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient ManagementProFilesInsert{..}
          = go _mpfiAccountId _mpfiWebPropertyId (Just AltJSON)
              _mpfiPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementProFilesInsertResource)
                      mempty
