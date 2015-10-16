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
-- Module      : Network.Google.Resource.Analytics.Management.ProFiles.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProFilesUpdate@.
module Network.Google.Resource.Analytics.Management.ProFiles.Update
    (
    -- * REST Resource
      ManagementProFilesUpdateResource

    -- * Creating a Request
    , managementProFilesUpdate'
    , ManagementProFilesUpdate'

    -- * Request Lenses
    , mpfuWebPropertyId
    , mpfuProFileId
    , mpfuPayload
    , mpfuAccountId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProFilesUpdate@ method which the
-- 'ManagementProFilesUpdate'' request conforms to.
type ManagementProFilesUpdateResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ProFile :> Put '[JSON] ProFile

-- | Updates an existing view (profile).
--
-- /See:/ 'managementProFilesUpdate'' smart constructor.
data ManagementProFilesUpdate' = ManagementProFilesUpdate'
    { _mpfuWebPropertyId :: !Text
    , _mpfuProFileId     :: !Text
    , _mpfuPayload       :: !ProFile
    , _mpfuAccountId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFilesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpfuWebPropertyId'
--
-- * 'mpfuProFileId'
--
-- * 'mpfuPayload'
--
-- * 'mpfuAccountId'
managementProFilesUpdate'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> ProFile -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> ManagementProFilesUpdate'
managementProFilesUpdate' pMpfuWebPropertyId_ pMpfuProFileId_ pMpfuPayload_ pMpfuAccountId_ =
    ManagementProFilesUpdate'
    { _mpfuWebPropertyId = pMpfuWebPropertyId_
    , _mpfuProFileId = pMpfuProFileId_
    , _mpfuPayload = pMpfuPayload_
    , _mpfuAccountId = pMpfuAccountId_
    }

-- | Web property ID to which the view (profile) belongs
mpfuWebPropertyId :: Lens' ManagementProFilesUpdate' Text
mpfuWebPropertyId
  = lens _mpfuWebPropertyId
      (\ s a -> s{_mpfuWebPropertyId = a})

-- | ID of the view (profile) to be updated.
mpfuProFileId :: Lens' ManagementProFilesUpdate' Text
mpfuProFileId
  = lens _mpfuProFileId
      (\ s a -> s{_mpfuProFileId = a})

-- | Multipart request metadata.
mpfuPayload :: Lens' ManagementProFilesUpdate' ProFile
mpfuPayload
  = lens _mpfuPayload (\ s a -> s{_mpfuPayload = a})

-- | Account ID to which the view (profile) belongs
mpfuAccountId :: Lens' ManagementProFilesUpdate' Text
mpfuAccountId
  = lens _mpfuAccountId
      (\ s a -> s{_mpfuAccountId = a})

instance GoogleRequest ManagementProFilesUpdate'
         where
        type Rs ManagementProFilesUpdate' = ProFile
        requestClient ManagementProFilesUpdate'{..}
          = go _mpfuAccountId _mpfuWebPropertyId _mpfuProFileId
              (Just AltJSON)
              _mpfuPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementProFilesUpdateResource)
                      mempty
