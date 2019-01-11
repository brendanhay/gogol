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
-- Module      : Network.Google.Resource.DFAReporting.TargetingTemplates.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing targeting template.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.targetingTemplates.update@.
module Network.Google.Resource.DFAReporting.TargetingTemplates.Update
    (
    -- * REST Resource
      TargetingTemplatesUpdateResource

    -- * Creating a Request
    , targetingTemplatesUpdate
    , TargetingTemplatesUpdate

    -- * Request Lenses
    , ttuProFileId
    , ttuPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.targetingTemplates.update@ method which the
-- 'TargetingTemplatesUpdate' request conforms to.
type TargetingTemplatesUpdateResource =
     "dfareporting" :>
       "v3.2" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "targetingTemplates" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] TargetingTemplate :>
                   Put '[JSON] TargetingTemplate

-- | Updates an existing targeting template.
--
-- /See:/ 'targetingTemplatesUpdate' smart constructor.
data TargetingTemplatesUpdate = TargetingTemplatesUpdate'
    { _ttuProFileId :: !(Textual Int64)
    , _ttuPayload   :: !TargetingTemplate
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetingTemplatesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttuProFileId'
--
-- * 'ttuPayload'
targetingTemplatesUpdate
    :: Int64 -- ^ 'ttuProFileId'
    -> TargetingTemplate -- ^ 'ttuPayload'
    -> TargetingTemplatesUpdate
targetingTemplatesUpdate pTtuProFileId_ pTtuPayload_ =
    TargetingTemplatesUpdate'
    { _ttuProFileId = _Coerce # pTtuProFileId_
    , _ttuPayload = pTtuPayload_
    }

-- | User profile ID associated with this request.
ttuProFileId :: Lens' TargetingTemplatesUpdate Int64
ttuProFileId
  = lens _ttuProFileId (\ s a -> s{_ttuProFileId = a})
      . _Coerce

-- | Multipart request metadata.
ttuPayload :: Lens' TargetingTemplatesUpdate TargetingTemplate
ttuPayload
  = lens _ttuPayload (\ s a -> s{_ttuPayload = a})

instance GoogleRequest TargetingTemplatesUpdate where
        type Rs TargetingTemplatesUpdate = TargetingTemplate
        type Scopes TargetingTemplatesUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient TargetingTemplatesUpdate'{..}
          = go _ttuProFileId (Just AltJSON) _ttuPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetingTemplatesUpdateResource)
                      mempty
