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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one account user profile by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountUserProFilesGet@.
module Network.Google.Resource.DFAReporting.AccountUserProFiles.Get
    (
    -- * REST Resource
      AccountUserProFilesGetResource

    -- * Creating a Request
    , accountUserProFilesGet'
    , AccountUserProFilesGet'

    -- * Request Lenses
    , aupfgProFileId
    , aupfgId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountUserProFilesGet@ method which the
-- 'AccountUserProFilesGet'' request conforms to.
type AccountUserProFilesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountUserProfiles" :>
           Capture "id" Int64 :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] AccountUserProFile

-- | Gets one account user profile by ID.
--
-- /See:/ 'accountUserProFilesGet'' smart constructor.
data AccountUserProFilesGet' = AccountUserProFilesGet'
    { _aupfgProFileId :: !Int64
    , _aupfgId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountUserProFilesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aupfgProFileId'
--
-- * 'aupfgId'
accountUserProFilesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AccountUserProFilesGet'
accountUserProFilesGet' pAupfgProFileId_ pAupfgId_ =
    AccountUserProFilesGet'
    { _aupfgProFileId = pAupfgProFileId_
    , _aupfgId = pAupfgId_
    }

-- | User profile ID associated with this request.
aupfgProFileId :: Lens' AccountUserProFilesGet' Int64
aupfgProFileId
  = lens _aupfgProFileId
      (\ s a -> s{_aupfgProFileId = a})

-- | User profile ID.
aupfgId :: Lens' AccountUserProFilesGet' Int64
aupfgId = lens _aupfgId (\ s a -> s{_aupfgId = a})

instance GoogleRequest AccountUserProFilesGet' where
        type Rs AccountUserProFilesGet' = AccountUserProFile
        requestClient AccountUserProFilesGet'{..}
          = go _aupfgProFileId _aupfgId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountUserProFilesGetResource)
                      mempty
