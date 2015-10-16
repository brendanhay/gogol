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
-- Module      : Network.Google.Resource.DFAReporting.Creatives.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing creative.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativesUpdate@.
module Network.Google.Resource.DFAReporting.Creatives.Update
    (
    -- * REST Resource
      CreativesUpdateResource

    -- * Creating a Request
    , creativesUpdate'
    , CreativesUpdate'

    -- * Request Lenses
    , cuuProFileId
    , cuuPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativesUpdate@ method which the
-- 'CreativesUpdate'' request conforms to.
type CreativesUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creatives" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Creative :> Put '[JSON] Creative

-- | Updates an existing creative.
--
-- /See:/ 'creativesUpdate'' smart constructor.
data CreativesUpdate' = CreativesUpdate'
    { _cuuProFileId :: !Int64
    , _cuuPayload   :: !Creative
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuuProFileId'
--
-- * 'cuuPayload'
creativesUpdate'
    :: Int64 -- ^ 'profileId'
    -> Creative -- ^ 'payload'
    -> CreativesUpdate'
creativesUpdate' pCuuProFileId_ pCuuPayload_ =
    CreativesUpdate'
    { _cuuProFileId = pCuuProFileId_
    , _cuuPayload = pCuuPayload_
    }

-- | User profile ID associated with this request.
cuuProFileId :: Lens' CreativesUpdate' Int64
cuuProFileId
  = lens _cuuProFileId (\ s a -> s{_cuuProFileId = a})

-- | Multipart request metadata.
cuuPayload :: Lens' CreativesUpdate' Creative
cuuPayload
  = lens _cuuPayload (\ s a -> s{_cuuPayload = a})

instance GoogleRequest CreativesUpdate' where
        type Rs CreativesUpdate' = Creative
        requestClient CreativesUpdate'{..}
          = go _cuuProFileId (Just AltJSON) _cuuPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativesUpdateResource)
                      mempty
