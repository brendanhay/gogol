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
-- Module      : Network.Google.Resource.DFAReporting.AccountUserProFiles.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one account user profile by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.accountUserProfiles.get@.
module Network.Google.Resource.DFAReporting.AccountUserProFiles.Get
    (
    -- * REST Resource
      AccountUserProFilesGetResource

    -- * Creating a Request
    , accountUserProFilesGet
    , AccountUserProFilesGet

    -- * Request Lenses
    , aupfgProFileId
    , aupfgId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.accountUserProfiles.get@ method which the
-- 'AccountUserProFilesGet' request conforms to.
type AccountUserProFilesGetResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "accountUserProfiles" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] AccountUserProFile

-- | Gets one account user profile by ID.
--
-- /See:/ 'accountUserProFilesGet' smart constructor.
data AccountUserProFilesGet = AccountUserProFilesGet'
    { _aupfgProFileId :: !(Textual Int64)
    , _aupfgId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountUserProFilesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aupfgProFileId'
--
-- * 'aupfgId'
accountUserProFilesGet
    :: Int64 -- ^ 'aupfgProFileId'
    -> Int64 -- ^ 'aupfgId'
    -> AccountUserProFilesGet
accountUserProFilesGet pAupfgProFileId_ pAupfgId_ =
    AccountUserProFilesGet'
    { _aupfgProFileId = _Coerce # pAupfgProFileId_
    , _aupfgId = _Coerce # pAupfgId_
    }

-- | User profile ID associated with this request.
aupfgProFileId :: Lens' AccountUserProFilesGet Int64
aupfgProFileId
  = lens _aupfgProFileId
      (\ s a -> s{_aupfgProFileId = a})
      . _Coerce

-- | User profile ID.
aupfgId :: Lens' AccountUserProFilesGet Int64
aupfgId
  = lens _aupfgId (\ s a -> s{_aupfgId = a}) . _Coerce

instance GoogleRequest AccountUserProFilesGet where
        type Rs AccountUserProFilesGet = AccountUserProFile
        type Scopes AccountUserProFilesGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AccountUserProFilesGet'{..}
          = go _aupfgProFileId _aupfgId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountUserProFilesGetResource)
                      mempty
