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
-- Module      : Network.Google.Resource.DFAReporting.CreativeFieldValues.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing creative field value. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.creativeFieldValues.patch@.
module Network.Google.Resource.DFAReporting.CreativeFieldValues.Patch
    (
    -- * REST Resource
      CreativeFieldValuesPatchResource

    -- * Creating a Request
    , creativeFieldValuesPatch'
    , CreativeFieldValuesPatch'

    -- * Request Lenses
    , cfvpCreativeFieldId
    , cfvpProFileId
    , cfvpPayload
    , cfvpId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeFieldValues.patch@ method which the
-- 'CreativeFieldValuesPatch'' request conforms to.
type CreativeFieldValuesPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeFields" :>
           Capture "creativeFieldId" Int64 :>
             "creativeFieldValues" :>
               QueryParam "id" Int64 :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] CreativeFieldValue :>
                     Patch '[JSON] CreativeFieldValue

-- | Updates an existing creative field value. This method supports patch
-- semantics.
--
-- /See:/ 'creativeFieldValuesPatch'' smart constructor.
data CreativeFieldValuesPatch' = CreativeFieldValuesPatch'
    { _cfvpCreativeFieldId :: !Int64
    , _cfvpProFileId       :: !Int64
    , _cfvpPayload         :: !CreativeFieldValue
    , _cfvpId              :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldValuesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfvpCreativeFieldId'
--
-- * 'cfvpProFileId'
--
-- * 'cfvpPayload'
--
-- * 'cfvpId'
creativeFieldValuesPatch'
    :: Int64 -- ^ 'cfvpCreativeFieldId'
    -> Int64 -- ^ 'cfvpProFileId'
    -> CreativeFieldValue -- ^ 'cfvpPayload'
    -> Int64 -- ^ 'cfvpId'
    -> CreativeFieldValuesPatch'
creativeFieldValuesPatch' pCfvpCreativeFieldId_ pCfvpProFileId_ pCfvpPayload_ pCfvpId_ =
    CreativeFieldValuesPatch'
    { _cfvpCreativeFieldId = pCfvpCreativeFieldId_
    , _cfvpProFileId = pCfvpProFileId_
    , _cfvpPayload = pCfvpPayload_
    , _cfvpId = pCfvpId_
    }

-- | Creative field ID for this creative field value.
cfvpCreativeFieldId :: Lens' CreativeFieldValuesPatch' Int64
cfvpCreativeFieldId
  = lens _cfvpCreativeFieldId
      (\ s a -> s{_cfvpCreativeFieldId = a})

-- | User profile ID associated with this request.
cfvpProFileId :: Lens' CreativeFieldValuesPatch' Int64
cfvpProFileId
  = lens _cfvpProFileId
      (\ s a -> s{_cfvpProFileId = a})

-- | Multipart request metadata.
cfvpPayload :: Lens' CreativeFieldValuesPatch' CreativeFieldValue
cfvpPayload
  = lens _cfvpPayload (\ s a -> s{_cfvpPayload = a})

-- | Creative Field Value ID
cfvpId :: Lens' CreativeFieldValuesPatch' Int64
cfvpId = lens _cfvpId (\ s a -> s{_cfvpId = a})

instance GoogleRequest CreativeFieldValuesPatch'
         where
        type Rs CreativeFieldValuesPatch' =
             CreativeFieldValue
        requestClient CreativeFieldValuesPatch'{..}
          = go _cfvpProFileId _cfvpCreativeFieldId
              (Just _cfvpId)
              (Just AltJSON)
              _cfvpPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeFieldValuesPatchResource)
                      mempty
