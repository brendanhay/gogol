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
-- Module      : Network.Google.Resource.Analytics.Management.ProFiles.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing view (profile). This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profiles.patch@.
module Network.Google.Resource.Analytics.Management.ProFiles.Patch
    (
    -- * REST Resource
      ManagementProFilesPatchResource

    -- * Creating a Request
    , managementProFilesPatch
    , ManagementProFilesPatch

    -- * Request Lenses
    , mpfpWebPropertyId
    , mpfpProFileId
    , mpfpPayload
    , mpfpAccountId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.profiles.patch@ method which the
-- 'ManagementProFilesPatch' request conforms to.
type ManagementProFilesPatchResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   "profiles" :>
                     Capture "profileId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ProFile :> Patch '[JSON] ProFile

-- | Updates an existing view (profile). This method supports patch
-- semantics.
--
-- /See:/ 'managementProFilesPatch' smart constructor.
data ManagementProFilesPatch =
  ManagementProFilesPatch'
    { _mpfpWebPropertyId :: !Text
    , _mpfpProFileId     :: !Text
    , _mpfpPayload       :: !ProFile
    , _mpfpAccountId     :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagementProFilesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpfpWebPropertyId'
--
-- * 'mpfpProFileId'
--
-- * 'mpfpPayload'
--
-- * 'mpfpAccountId'
managementProFilesPatch
    :: Text -- ^ 'mpfpWebPropertyId'
    -> Text -- ^ 'mpfpProFileId'
    -> ProFile -- ^ 'mpfpPayload'
    -> Text -- ^ 'mpfpAccountId'
    -> ManagementProFilesPatch
managementProFilesPatch pMpfpWebPropertyId_ pMpfpProFileId_ pMpfpPayload_ pMpfpAccountId_ =
  ManagementProFilesPatch'
    { _mpfpWebPropertyId = pMpfpWebPropertyId_
    , _mpfpProFileId = pMpfpProFileId_
    , _mpfpPayload = pMpfpPayload_
    , _mpfpAccountId = pMpfpAccountId_
    }


-- | Web property ID to which the view (profile) belongs
mpfpWebPropertyId :: Lens' ManagementProFilesPatch Text
mpfpWebPropertyId
  = lens _mpfpWebPropertyId
      (\ s a -> s{_mpfpWebPropertyId = a})

-- | ID of the view (profile) to be updated.
mpfpProFileId :: Lens' ManagementProFilesPatch Text
mpfpProFileId
  = lens _mpfpProFileId
      (\ s a -> s{_mpfpProFileId = a})

-- | Multipart request metadata.
mpfpPayload :: Lens' ManagementProFilesPatch ProFile
mpfpPayload
  = lens _mpfpPayload (\ s a -> s{_mpfpPayload = a})

-- | Account ID to which the view (profile) belongs
mpfpAccountId :: Lens' ManagementProFilesPatch Text
mpfpAccountId
  = lens _mpfpAccountId
      (\ s a -> s{_mpfpAccountId = a})

instance GoogleRequest ManagementProFilesPatch where
        type Rs ManagementProFilesPatch = ProFile
        type Scopes ManagementProFilesPatch =
             '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient ManagementProFilesPatch'{..}
          = go _mpfpAccountId _mpfpWebPropertyId _mpfpProFileId
              (Just AltJSON)
              _mpfpPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementProFilesPatchResource)
                      mempty
