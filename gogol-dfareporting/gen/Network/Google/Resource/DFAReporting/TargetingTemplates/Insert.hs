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
-- Module      : Network.Google.Resource.DFAReporting.TargetingTemplates.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new targeting template.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.targetingTemplates.insert@.
module Network.Google.Resource.DFAReporting.TargetingTemplates.Insert
    (
    -- * REST Resource
      TargetingTemplatesInsertResource

    -- * Creating a Request
    , targetingTemplatesInsert
    , TargetingTemplatesInsert

    -- * Request Lenses
    , ttiProFileId
    , ttiPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.targetingTemplates.insert@ method which the
-- 'TargetingTemplatesInsert' request conforms to.
type TargetingTemplatesInsertResource =
     "dfareporting" :>
       "v2.6" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "targetingTemplates" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] TargetingTemplate :>
                   Post '[JSON] TargetingTemplate

-- | Inserts a new targeting template.
--
-- /See:/ 'targetingTemplatesInsert' smart constructor.
data TargetingTemplatesInsert = TargetingTemplatesInsert'
    { _ttiProFileId :: !(Textual Int64)
    , _ttiPayload   :: !TargetingTemplate
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetingTemplatesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttiProFileId'
--
-- * 'ttiPayload'
targetingTemplatesInsert
    :: Int64 -- ^ 'ttiProFileId'
    -> TargetingTemplate -- ^ 'ttiPayload'
    -> TargetingTemplatesInsert
targetingTemplatesInsert pTtiProFileId_ pTtiPayload_ =
    TargetingTemplatesInsert'
    { _ttiProFileId = _Coerce # pTtiProFileId_
    , _ttiPayload = pTtiPayload_
    }

-- | User profile ID associated with this request.
ttiProFileId :: Lens' TargetingTemplatesInsert Int64
ttiProFileId
  = lens _ttiProFileId (\ s a -> s{_ttiProFileId = a})
      . _Coerce

-- | Multipart request metadata.
ttiPayload :: Lens' TargetingTemplatesInsert TargetingTemplate
ttiPayload
  = lens _ttiPayload (\ s a -> s{_ttiPayload = a})

instance GoogleRequest TargetingTemplatesInsert where
        type Rs TargetingTemplatesInsert = TargetingTemplate
        type Scopes TargetingTemplatesInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient TargetingTemplatesInsert'{..}
          = go _ttiProFileId (Just AltJSON) _ttiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetingTemplatesInsertResource)
                      mempty
