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
-- Module      : Network.Google.Resource.DFAReporting.AccountUserProFiles.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new account user profile.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.accountUserProfiles.insert@.
module Network.Google.Resource.DFAReporting.AccountUserProFiles.Insert
    (
    -- * REST Resource
      AccountUserProFilesInsertResource

    -- * Creating a Request
    , accountUserProFilesInsert
    , AccountUserProFilesInsert

    -- * Request Lenses
    , aupfiProFileId
    , aupfiPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.accountUserProfiles.insert@ method which the
-- 'AccountUserProFilesInsert' request conforms to.
type AccountUserProFilesInsertResource =
     "dfareporting" :>
       "v2.5beta1" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "accountUserProfiles" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] AccountUserProFile :>
                   Post '[JSON] AccountUserProFile

-- | Inserts a new account user profile.
--
-- /See:/ 'accountUserProFilesInsert' smart constructor.
data AccountUserProFilesInsert = AccountUserProFilesInsert'
    { _aupfiProFileId :: !(Textual Int64)
    , _aupfiPayload   :: !AccountUserProFile
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountUserProFilesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aupfiProFileId'
--
-- * 'aupfiPayload'
accountUserProFilesInsert
    :: Int64 -- ^ 'aupfiProFileId'
    -> AccountUserProFile -- ^ 'aupfiPayload'
    -> AccountUserProFilesInsert
accountUserProFilesInsert pAupfiProFileId_ pAupfiPayload_ =
    AccountUserProFilesInsert'
    { _aupfiProFileId = _Coerce # pAupfiProFileId_
    , _aupfiPayload = pAupfiPayload_
    }

-- | User profile ID associated with this request.
aupfiProFileId :: Lens' AccountUserProFilesInsert Int64
aupfiProFileId
  = lens _aupfiProFileId
      (\ s a -> s{_aupfiProFileId = a})
      . _Coerce

-- | Multipart request metadata.
aupfiPayload :: Lens' AccountUserProFilesInsert AccountUserProFile
aupfiPayload
  = lens _aupfiPayload (\ s a -> s{_aupfiPayload = a})

instance GoogleRequest AccountUserProFilesInsert
         where
        type Rs AccountUserProFilesInsert =
             AccountUserProFile
        type Scopes AccountUserProFilesInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AccountUserProFilesInsert'{..}
          = go _aupfiProFileId (Just AltJSON) _aupfiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountUserProFilesInsertResource)
                      mempty
