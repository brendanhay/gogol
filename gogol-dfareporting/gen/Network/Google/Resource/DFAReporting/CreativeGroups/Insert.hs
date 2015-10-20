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
-- Module      : Network.Google.Resource.DFAReporting.CreativeGroups.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new creative group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.creativeGroups.insert@.
module Network.Google.Resource.DFAReporting.CreativeGroups.Insert
    (
    -- * REST Resource
      CreativeGroupsInsertResource

    -- * Creating a Request
    , creativeGroupsInsert
    , CreativeGroupsInsert

    -- * Request Lenses
    , cgiProFileId
    , cgiPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeGroups.insert@ method which the
-- 'CreativeGroupsInsert' request conforms to.
type CreativeGroupsInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeGroups" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] CreativeGroup :>
               Post '[JSON] CreativeGroup

-- | Inserts a new creative group.
--
-- /See:/ 'creativeGroupsInsert' smart constructor.
data CreativeGroupsInsert = CreativeGroupsInsert
    { _cgiProFileId :: !Int64
    , _cgiPayload   :: !CreativeGroup
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeGroupsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgiProFileId'
--
-- * 'cgiPayload'
creativeGroupsInsert
    :: Int64 -- ^ 'cgiProFileId'
    -> CreativeGroup -- ^ 'cgiPayload'
    -> CreativeGroupsInsert
creativeGroupsInsert pCgiProFileId_ pCgiPayload_ =
    CreativeGroupsInsert
    { _cgiProFileId = pCgiProFileId_
    , _cgiPayload = pCgiPayload_
    }

-- | User profile ID associated with this request.
cgiProFileId :: Lens' CreativeGroupsInsert Int64
cgiProFileId
  = lens _cgiProFileId (\ s a -> s{_cgiProFileId = a})

-- | Multipart request metadata.
cgiPayload :: Lens' CreativeGroupsInsert CreativeGroup
cgiPayload
  = lens _cgiPayload (\ s a -> s{_cgiPayload = a})

instance GoogleRequest CreativeGroupsInsert where
        type Rs CreativeGroupsInsert = CreativeGroup
        requestClient CreativeGroupsInsert{..}
          = go _cgiProFileId (Just AltJSON) _cgiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeGroupsInsertResource)
                      mempty
