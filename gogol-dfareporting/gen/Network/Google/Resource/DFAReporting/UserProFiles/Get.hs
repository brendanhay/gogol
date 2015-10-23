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
-- Module      : Network.Google.Resource.DFAReporting.UserProFiles.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one user profile by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.userProfiles.get@.
module Network.Google.Resource.DFAReporting.UserProFiles.Get
    (
    -- * REST Resource
      UserProFilesGetResource

    -- * Creating a Request
    , userProFilesGet
    , UserProFilesGet

    -- * Request Lenses
    , upfgProFileId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.userProfiles.get@ method which the
-- 'UserProFilesGet' request conforms to.
type UserProFilesGetResource =
     "dfareporting" :>
       "v2.2" :>
         "userprofiles" :>
           Capture "profileId" Int64 :>
             QueryParam "alt" AltJSON :> Get '[JSON] UserProFile

-- | Gets one user profile by ID.
--
-- /See:/ 'userProFilesGet' smart constructor.
newtype UserProFilesGet = UserProFilesGet
    { _upfgProFileId :: Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserProFilesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upfgProFileId'
userProFilesGet
    :: Int64 -- ^ 'upfgProFileId'
    -> UserProFilesGet
userProFilesGet pUpfgProFileId_ =
    UserProFilesGet
    { _upfgProFileId = pUpfgProFileId_
    }

-- | The user profile ID.
upfgProFileId :: Lens' UserProFilesGet Int64
upfgProFileId
  = lens _upfgProFileId
      (\ s a -> s{_upfgProFileId = a})

instance GoogleRequest UserProFilesGet where
        type Rs UserProFilesGet = UserProFile
        requestClient UserProFilesGet{..}
          = go _upfgProFileId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy UserProFilesGetResource)
                      mempty
