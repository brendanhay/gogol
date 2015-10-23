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
-- Module      : Network.Google.Resource.DFAReporting.CreativeGroups.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing creative group. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.creativeGroups.patch@.
module Network.Google.Resource.DFAReporting.CreativeGroups.Patch
    (
    -- * REST Resource
      CreativeGroupsPatchResource

    -- * Creating a Request
    , creativeGroupsPatch
    , CreativeGroupsPatch

    -- * Request Lenses
    , cgpProFileId
    , cgpPayload
    , cgpId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeGroups.patch@ method which the
-- 'CreativeGroupsPatch' request conforms to.
type CreativeGroupsPatchResource =
     "dfareporting" :>
       "v2.2" :>
         "userprofiles" :>
           Capture "profileId" Int64 :>
             "creativeGroups" :>
               QueryParam "id" Int64 :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] CreativeGroup :>
                     Patch '[JSON] CreativeGroup

-- | Updates an existing creative group. This method supports patch
-- semantics.
--
-- /See:/ 'creativeGroupsPatch' smart constructor.
data CreativeGroupsPatch = CreativeGroupsPatch
    { _cgpProFileId :: !Int64
    , _cgpPayload   :: !CreativeGroup
    , _cgpId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeGroupsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgpProFileId'
--
-- * 'cgpPayload'
--
-- * 'cgpId'
creativeGroupsPatch
    :: Int64 -- ^ 'cgpProFileId'
    -> CreativeGroup -- ^ 'cgpPayload'
    -> Int64 -- ^ 'cgpId'
    -> CreativeGroupsPatch
creativeGroupsPatch pCgpProFileId_ pCgpPayload_ pCgpId_ =
    CreativeGroupsPatch
    { _cgpProFileId = pCgpProFileId_
    , _cgpPayload = pCgpPayload_
    , _cgpId = pCgpId_
    }

-- | User profile ID associated with this request.
cgpProFileId :: Lens' CreativeGroupsPatch Int64
cgpProFileId
  = lens _cgpProFileId (\ s a -> s{_cgpProFileId = a})

-- | Multipart request metadata.
cgpPayload :: Lens' CreativeGroupsPatch CreativeGroup
cgpPayload
  = lens _cgpPayload (\ s a -> s{_cgpPayload = a})

-- | Creative group ID.
cgpId :: Lens' CreativeGroupsPatch Int64
cgpId = lens _cgpId (\ s a -> s{_cgpId = a})

instance GoogleRequest CreativeGroupsPatch where
        type Rs CreativeGroupsPatch = CreativeGroup
        requestClient CreativeGroupsPatch{..}
          = go _cgpProFileId (Just _cgpId) (Just AltJSON)
              _cgpPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeGroupsPatchResource)
                      mempty
