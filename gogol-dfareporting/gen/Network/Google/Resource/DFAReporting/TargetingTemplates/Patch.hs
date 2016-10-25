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
-- Module      : Network.Google.Resource.DFAReporting.TargetingTemplates.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing targeting template. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.targetingTemplates.patch@.
module Network.Google.Resource.DFAReporting.TargetingTemplates.Patch
    (
    -- * REST Resource
      TargetingTemplatesPatchResource

    -- * Creating a Request
    , targetingTemplatesPatch
    , TargetingTemplatesPatch

    -- * Request Lenses
    , ttpProFileId
    , ttpPayload
    , ttpId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.targetingTemplates.patch@ method which the
-- 'TargetingTemplatesPatch' request conforms to.
type TargetingTemplatesPatchResource =
     "dfareporting" :>
       "v2.6" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "targetingTemplates" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] TargetingTemplate :>
                     Patch '[JSON] TargetingTemplate

-- | Updates an existing targeting template. This method supports patch
-- semantics.
--
-- /See:/ 'targetingTemplatesPatch' smart constructor.
data TargetingTemplatesPatch = TargetingTemplatesPatch'
    { _ttpProFileId :: !(Textual Int64)
    , _ttpPayload   :: !TargetingTemplate
    , _ttpId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetingTemplatesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttpProFileId'
--
-- * 'ttpPayload'
--
-- * 'ttpId'
targetingTemplatesPatch
    :: Int64 -- ^ 'ttpProFileId'
    -> TargetingTemplate -- ^ 'ttpPayload'
    -> Int64 -- ^ 'ttpId'
    -> TargetingTemplatesPatch
targetingTemplatesPatch pTtpProFileId_ pTtpPayload_ pTtpId_ =
    TargetingTemplatesPatch'
    { _ttpProFileId = _Coerce # pTtpProFileId_
    , _ttpPayload = pTtpPayload_
    , _ttpId = _Coerce # pTtpId_
    }

-- | User profile ID associated with this request.
ttpProFileId :: Lens' TargetingTemplatesPatch Int64
ttpProFileId
  = lens _ttpProFileId (\ s a -> s{_ttpProFileId = a})
      . _Coerce

-- | Multipart request metadata.
ttpPayload :: Lens' TargetingTemplatesPatch TargetingTemplate
ttpPayload
  = lens _ttpPayload (\ s a -> s{_ttpPayload = a})

-- | Targeting template ID.
ttpId :: Lens' TargetingTemplatesPatch Int64
ttpId
  = lens _ttpId (\ s a -> s{_ttpId = a}) . _Coerce

instance GoogleRequest TargetingTemplatesPatch where
        type Rs TargetingTemplatesPatch = TargetingTemplate
        type Scopes TargetingTemplatesPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient TargetingTemplatesPatch'{..}
          = go _ttpProFileId (Just _ttpId) (Just AltJSON)
              _ttpPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetingTemplatesPatchResource)
                      mempty
